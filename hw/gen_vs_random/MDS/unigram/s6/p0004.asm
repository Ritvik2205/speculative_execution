.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 90
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
test edx, -1561252782
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and al, al
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
bts ax, bx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
btr edx, ecx
and rax, 41
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and dl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
xor al, 9
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
xor al, -26
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
bt esi, ecx
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
