.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
and dl, -73
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test rbx, 56
xor rdi, -9
or bl, sil
test rcx, -613256812
jmp .bb_0.1
.bb_0.1:
or al, cl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
xor rsi, -117
xor rax, -1499464454
bt ax, bx
and bl, dil
bt dx, bx
test al, sil
or cl, 6
bt bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
