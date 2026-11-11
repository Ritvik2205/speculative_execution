.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, dx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 39
and sil, al
xor al, 8
and dil, sil
or ax, 85
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and bl, al
or rax, -141551502
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rax, 1250429750
xor dil, -70
test eax, 1287331633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
