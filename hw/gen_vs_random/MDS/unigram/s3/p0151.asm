.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 84
and dil, cl
bt bx, 9
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
cmovns dx, si
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 28
btc rdx, rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 32
and dl, -73 # instrumentation
cmovns rbx, rax
or dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
test rsi, 879594088
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 84
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
btc rsi, rdx
and al, -38 # instrumentation
cmovp rax, rdi
xor al, -28
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
