.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
sub bl, -6
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
sbb dil, al
lea cx, qword ptr [rax + rdx]
and bl, -65
mov bl, dl
sbb dl, dil
xchg bl, al
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
