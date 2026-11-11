.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
lea rdx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
movzx eax, cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rbx
xor sil, bl
and rdi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 9
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
