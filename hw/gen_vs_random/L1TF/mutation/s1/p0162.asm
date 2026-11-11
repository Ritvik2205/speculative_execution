.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rsi + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
cmovnbe ebx, ecx
adc cl, al
cmovnbe rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
cmp rax, 834498504
xor bl, 38
or bl, -88
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovns dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
