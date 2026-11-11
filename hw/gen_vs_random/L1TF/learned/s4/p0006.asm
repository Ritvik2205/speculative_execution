.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 56
add dl, bl
xor dl, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 66
lea eax, qword ptr [rbx + rbx + 45]
and al, -68
xor cl, 89
or rdx, -22
cmp al, -119
cmovle cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
