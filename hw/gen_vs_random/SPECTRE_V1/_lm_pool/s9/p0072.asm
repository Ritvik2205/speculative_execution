.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
xor dl, 71
sub cl, al
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
sbb edx, -8
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmp si, -11
inc esi
lea rax, qword ptr [rsi + rbx]
lea rdi, qword ptr [rsi + rcx + 96]
sub al, -82
lea rax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
