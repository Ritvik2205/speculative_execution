.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 65
test bl, -8
lea rax, qword ptr [rcx + rbx + 30]
mov dl, cl
test cl, -62
add dil, dl
jmp .bb_0.1
.bb_0.1:
mov cl, dil
add al, al
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
