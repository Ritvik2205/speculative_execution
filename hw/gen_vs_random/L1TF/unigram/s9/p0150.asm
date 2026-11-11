.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
movzx eax, cx
setp bl
cmp ebx, 29
test dil, -126
movzx esi, al
xchg esi, edi
xor sil, bl
imul esi, eax
xchg bl, al
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
bt edx, 38
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
cmp bx, -21
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
