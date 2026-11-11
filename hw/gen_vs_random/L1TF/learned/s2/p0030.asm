.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
jmp .bb_0.1
.bb_0.1:
or dl, bl
jmp .bb_0.2
.bb_0.2:
cmp al, 27
lea rax, qword ptr [rdx + rbx + 44]
add dl, -1
jmp .bb_0.3
.bb_0.3:
test dx, cx
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
jmp .bb_0.6
.bb_0.6:
imul ebx, edi
test ax, 7679
and ax, 37
add al, -80
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
