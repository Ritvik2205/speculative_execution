.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 51
cmovno si, di
or dil, bl
add ebx, 2
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
or al, -5
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
