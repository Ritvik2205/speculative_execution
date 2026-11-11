.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, ax
add al, 10
adc al, sil
cmp bl, -114
xor cl, al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 21
sub rax, -1628299544
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
add al, -44
dec bl
or dil, sil
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
