.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
xor cl, dl
and bl, 68
test al, sil
and al, 49
or dil, dil
and eax, -85386306
jmp .bb_0.1
.bb_0.1:
or cl, bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test eax, 158941032
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
