.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -5
cmovnbe ebx, ecx
cmovnbe rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
or bl, -88
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
cmovns dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
cmp rax, 1138518729
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
lea rax, qword ptr [rsi + rcx]
adc cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
