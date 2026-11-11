.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and dl, -73
jmp .bb_0.1
.bb_0.1:
xor sil, cl
and cl, dl
xor bl, 67
not bl
jmp .bb_0.2
.bb_0.2:
or eax, esi
or cl, 39
xor cl, 24
and sil, -56
or dil, sil
bt cx, ax
test rax, -708244380
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
