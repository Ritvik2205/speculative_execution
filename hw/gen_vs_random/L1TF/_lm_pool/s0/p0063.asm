.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp rdi, 44
lea rcx, qword ptr [rax + rdx]
movzx si, cl
and bl, 89
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bt edi, ecx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
