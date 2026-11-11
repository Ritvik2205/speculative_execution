.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and cl, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
cmovnp edx, edi
and bl, 108 # instrumentation
cmovns rbx, rbx
bts rax, 77
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and eax, -574348013
or sil, -49
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
