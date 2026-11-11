.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
test al, -84
jmp .bb_0.1
.bb_0.1:
xor dil, bl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
cmp cl, -89
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
