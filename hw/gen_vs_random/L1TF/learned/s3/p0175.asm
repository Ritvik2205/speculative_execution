.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 18
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
add cl, -36
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 70
jmp .bb_0.1
.bb_0.1:
movzx ebx, cl
jmp .bb_0.2
.bb_0.2:
or bl, cl
jmp .bb_0.3
.bb_0.3:
lea cx, qword ptr [rdi + rax + 33]
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
