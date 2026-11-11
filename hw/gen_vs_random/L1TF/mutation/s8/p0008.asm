.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
cmovnbe ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
cmovns dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
or bl, -88
cmp rax, 921820217
adc cl, al
lea rax, qword ptr [rsi + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
xor bl, -5
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
cmovnbe rax, rdi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
dec bx
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and al, al
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
