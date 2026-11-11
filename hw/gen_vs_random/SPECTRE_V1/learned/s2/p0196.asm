.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea edx, qword ptr [rbx + rcx + 99]
and al, 33
and al, -54
mov dl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
add al, -13
cmp bl, sil
sbb al, 118
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
