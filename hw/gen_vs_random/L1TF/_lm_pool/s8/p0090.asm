.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xor bl, -5
xor edi, 59
lea rax, qword ptr [rbx + rdx + 23]
test bl, 45
and sil, -90
and dl, bl
xor cl, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
