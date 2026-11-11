.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -13240
sbb al, -107
add cl, dl
test al, 40
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
test dil, -116
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
test dil, -116
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
