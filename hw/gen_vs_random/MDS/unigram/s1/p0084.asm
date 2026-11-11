.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, cl
cmovb rdi, rdx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 58
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 92
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
or ax, -6817
jmp .bb_0.1
.bb_0.1:
and sil, dl
and rcx, 107
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
and cl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor bl, -27
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
btc rdi, rcx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
cmovz si, di
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
