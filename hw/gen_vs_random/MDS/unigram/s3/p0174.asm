.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and al, sil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and bl, -74 # instrumentation
cmovns eax, edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 48
and dl, 48 # instrumentation
cmovz rdi, rax
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
cmovb rcx, rdx
and sil, sil
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
cmovp ax, si
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
bts rbx, 56
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
cmovno cx, dx
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
