.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and dil, -62
xor eax, -127
test edi, -1252846009
and eax, -85386306
and rcx, 107
xor cl, dl
and dl, -73
and sil, 74
xor rdx, -59
btc di, ax
and dx, 3
or ax, 85
and rax, 1250429750
test dil, cl
or dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
