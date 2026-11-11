.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmp dl, cl
jmp .bb_0.2
.bb_0.2:
sub rax, -2089384489
xor cl, dil
jmp .bb_0.3
.bb_0.3:
lea rcx, qword ptr [rdx + rsi]
or bl, -88
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
