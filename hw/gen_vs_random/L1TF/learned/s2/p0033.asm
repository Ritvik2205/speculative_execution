.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 1
inc esi
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea ecx, qword ptr [rax]
lea rdi, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
