.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz di, di
test al, bl
xor cl, dil
or ebx, -104
test al, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
not al
and bx, si
and bl, -28 # instrumentation
cmovl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rbx]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 30
xor dl, bl
or dl, sil
cmovo edx, edx
and bl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
