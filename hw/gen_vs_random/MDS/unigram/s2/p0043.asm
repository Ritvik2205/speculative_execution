.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
test dl, cl
bt rax, 56
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and dl, -19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and dl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
test dil, bl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 71
btr di, 89
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
btc ax, 53
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and bl, sil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
