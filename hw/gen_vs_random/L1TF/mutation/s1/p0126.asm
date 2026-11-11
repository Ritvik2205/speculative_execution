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
lock or qword ptr [r14 + rdi], -51
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
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
cmp bl, cl
lea edx, qword ptr [rdx + rax + 29932]
adc dl, bl
xor dl, 19
sbb rax, 803312930
add dil, -7
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
