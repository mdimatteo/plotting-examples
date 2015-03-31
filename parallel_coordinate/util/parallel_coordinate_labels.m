function parallel_coordinate_labels(x,Xt,min_lab,max_lab,attribute_lab)
% Use the text function to add labels at the XTick positions at desired
% offset delta_...

% Adapted from code by Author: http://stackoverflow.com/users/1643946/bonlenfum
% http://stackoverflow.com/questions/16642404/set-the-position-of-the-xtick-labels-matlab

% Reduce the size of the axis so that all the labels fit in the figure.
pos = get(gca,'Position');
set(gca,'Position',[pos(1), .2, pos(3) .7])

ax = axis; % Current axis limits
axis(axis); % Set the axis limit modes (e.g. XLimMode) to manual
Yl = ax(3:4); % Y-axis limits
Xl = ax(1:2);

% Place the text labels -- the value of delta_... modifies how far the labels 
% are from the axis.
delt_minima=0.05;
delta_maxima=0.05;
delta_att=0.15;

minima_labels = text(Xt, Yl(1)*ones(1,length(x))-delt_minima, min_lab, 'FontSize', 8);
maxima_labels = text(Xt, Yl(2)*ones(1,length(x))+delta_maxima, max_lab, 'FontSize', 8);
attribute_labels = text(Xt, Yl(1)*ones(1,length(x))-delta_att, attribute_lab, 'FontSize', 10);

set(minima_labels, 'HorizontalAlignment','center','VerticalAlignment','middle')
set(maxima_labels, 'HorizontalAlignment','center','VerticalAlignment','middle')
set(attribute_labels, 'HorizontalAlignment','center','VerticalAlignment','middle')

% Remove the default labels
set(gca,'XTickLabel','')

