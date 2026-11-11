.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 40
or sil, al
xor sil, al
or al, 54
not cl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test sil, -96
test al, bl
xor cl, dil
jmp .bb_0.1
.bb_0.1:
or al, -78
xor dil, dl
or rcx, 54
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
