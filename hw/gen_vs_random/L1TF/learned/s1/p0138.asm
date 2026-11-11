.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, cx
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and cl, 59
or dl, -67
or rax, -82
adc edx, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
