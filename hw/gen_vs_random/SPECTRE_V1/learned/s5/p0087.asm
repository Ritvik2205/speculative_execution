.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 87
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
lea ax, qword ptr [rbx + rax + 63]
sub dl, -12
sub al, dl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 27
test bl, -8
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
