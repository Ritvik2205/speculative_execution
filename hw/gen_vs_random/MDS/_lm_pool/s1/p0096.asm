.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, dx
test bl, 65
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
or dl, cl
btc di, bx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
bt bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and ax, 27170
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
or dil, dl
jmp .bb_0.1
.bb_0.1:
xor al, 115
and dx, 3
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rax, 1886208862
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
