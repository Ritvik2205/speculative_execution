.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 848176907
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add al, -47
and al, -54
or al, 100
and cl, al
test cl, -120
mov sil, dl
cmp cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
