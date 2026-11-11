.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and esi, 80
test rdi, 8
btc eax, 40
test al, 66
xor bx, 52
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor al, 8
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test dil, -51
xor sil, al
and al, 14
xor di, -83
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
xor rax, -404206377
or al, -24
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
