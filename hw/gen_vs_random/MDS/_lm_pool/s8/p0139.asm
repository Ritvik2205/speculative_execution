.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -8
and esi, 39
or bl, dil
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor ebx, 56
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 86
jmp .bb_0.1
.bb_0.1:
test al, 22
or al, 30
jmp .bb_0.2
.bb_0.2:
or bl, dl
xor si, 91
not sil
or bl, cl
test al, sil
test si, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
