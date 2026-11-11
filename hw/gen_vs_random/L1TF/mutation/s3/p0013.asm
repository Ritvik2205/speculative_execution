.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 16650668
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
adc cl, al
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
cmovns dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
cmovnbe rax, rdi
xor bl, 38
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
lea rax, qword ptr [rsi + rcx]
or bl, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
