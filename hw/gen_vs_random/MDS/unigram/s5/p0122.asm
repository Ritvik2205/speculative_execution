.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, rcx
cmovnl rcx, rdx
bts rax, 77
and bl, 68
cmovz eax, edi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and dl, 91 # instrumentation
cmovnle edx, edx
btr cx, cx
and sil, -9
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and cl, -8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
btc rdi, 221
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
cmovns rdi, rcx
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
