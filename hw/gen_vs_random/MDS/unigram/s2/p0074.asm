.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and bl, al
cmovnbe di, ax
xor sil, al
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
cmovnbe si, dx
cmovo edx, ecx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and dl, 60 # instrumentation
cmovnl edi, eax
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
xor di, 93
xor dl, dl
btr rdi, 129
jmp .bb_0.1
.bb_0.1:
cmovno ax, si
bts rsi, rdi
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 39
cmovz rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
