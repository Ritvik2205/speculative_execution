.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
test bl, sil
or dil, -78
btc eax, 40
and si, -121
xor bx, 72
xor cl, dil
xor dil, bl
or dl, sil
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
not sil
test al, cl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
