.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
btc di, 164
test ecx, -1843375753
test bl, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
test al, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
xor cx, -18
or dl, sil
xor cx, -18
test al, bl
bt bx, ax
xor sil, -126
test dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
