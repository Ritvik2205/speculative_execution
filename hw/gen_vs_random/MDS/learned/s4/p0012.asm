.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 199
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or bl, cl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
or dil, -57
cmovnl rdx, rdx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
cmovnl rax, rax
test ebx, 245771113
xor al, -15
bt ax, 171
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
movsx si, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
add bl, bl
test rdx, -1624442902
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
