.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 14
mov al, -101
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
btr rbx, 15
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
add ebx, 2
js .bb_0.3
jmp .exit_0
.bb_0.3:
or bl, dil
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
