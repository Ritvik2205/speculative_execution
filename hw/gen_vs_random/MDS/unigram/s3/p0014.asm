.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
btc rbx, rbx
and cl, 57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 16
bt cx, si
or dil, -76
test dl, 9
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
or di, 39
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
and dl, -73
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or rax, -689609688
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
