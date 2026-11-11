.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
or al, cl
sub rbx, 43
xor cx, 113
and rax, 1163013815
and al, -68
or dl, cl
jmp .bb_0.2
.bb_0.2:
test cl, 58
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 72
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 79
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
cmp bl, 123
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
