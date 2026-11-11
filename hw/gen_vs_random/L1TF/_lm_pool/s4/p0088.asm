.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
test bl, 45
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
lea di, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
cmovp dx, ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
setnz al
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
add ebx, 2
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
