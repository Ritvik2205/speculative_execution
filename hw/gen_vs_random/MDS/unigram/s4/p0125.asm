.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdi, 22
and cl, -3 # instrumentation
cmovnb cx, bx
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 18
and bl, al
or al, -48
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and bl, dil
bt ebx, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -120
cmovnle rax, rdi
btc cx, 104
bt ebx, 107
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
or sil, al
or rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
