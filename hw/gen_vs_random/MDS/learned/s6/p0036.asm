.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
or sil, -49
and rbx, 65
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor bl, 67
test al, bl
xor bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
bt di, cx
xor ecx, 8
xor dil, -124
or al, 37
bt di, ax
xor bx, 83
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
