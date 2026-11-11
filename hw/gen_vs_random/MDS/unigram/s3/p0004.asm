.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 62
and cl, -115 # instrumentation
cmovl dx, cx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 35
or al, -48
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and cl, 95 # instrumentation
cmovns rcx, rcx
or bl, -98
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], esi
cmovnle ebx, edi
xor bl, 2
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
or rax, rdx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 79
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 99
cmovz cx, dx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 77
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
