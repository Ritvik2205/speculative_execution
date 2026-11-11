.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
xor cl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or cl, 39
and rax, 79
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xor sil, bl
and dl, sil
test al, dil
or cl, bl
jmp .bb_0.4
.bb_0.4:
xor edx, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
