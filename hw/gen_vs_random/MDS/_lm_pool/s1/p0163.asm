.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
xor rbx, 89
or dl, dl
and dl, -73
jmp .bb_0.1
.bb_0.1:
or esi, ecx
jmp .bb_0.2
.bb_0.2:
or al, 54
test cl, -18
or sil, dil
xor al, -26
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 42
or cl, sil
and cl, -19
or dil, sil
btr bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
