.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
add sil, -61
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -10
lea ecx, qword ptr [rbx]
or rbx, 18
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
