.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 44
js .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 59
lea rcx, qword ptr [rax + rsi + 9]
xchg al, dl
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
lea ecx, qword ptr [rax]
adc al, -82
sbb eax, 125
lea rdi, qword ptr [rax]
sub rsi, 97
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
