.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
setp sil
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 94
adc rbx, 75
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
neg ax
setnl dil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
cmovp edi, edx
setnle al
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
test cl, dil
cmovb rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
