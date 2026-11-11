.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, 75
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 28
adc cl, 62
lea rcx, qword ptr [rbx]
bt ax, 20
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 28
and sil, 110
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
lea rcx, qword ptr [rdx + rax + 22]
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
sbb bx, dx
bt rax, rdx
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
