.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
test cl, 91
or sil, bl
or dl, cl
and cx, -2
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
xor rdi, -9
test cl, -123
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and al, 35
test eax, 1838539683
or al, 74
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
