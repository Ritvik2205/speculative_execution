.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test dx, si
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test sil, -96
test bl, 65
btr bx, dx
xor cl, 55
and eax, 461212071
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
xor dil, dl
bt bx, ax
xor sil, -15
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or sil, al
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
