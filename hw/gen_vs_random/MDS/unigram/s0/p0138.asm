.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
btr esi, 92
and dl, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and dl, 57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
and sil, 47 # instrumentation
cmovnp esi, ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
btr dx, 47
xor bl, al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
