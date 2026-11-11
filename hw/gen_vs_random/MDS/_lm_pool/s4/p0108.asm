.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
xor rdx, -59
and ebx, 94
and al, sil
xor dl, -19
and bl, sil
test al, cl
or cl, 30
test al, bl
or al, 37
and dl, -73
or dil, -78
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
xor rdx, -59
bt bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
