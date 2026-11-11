.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 7
cmp rbx, 64
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
jmp .bb_0.2
.bb_0.2:
add dil, -7
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 82
add dl, cl
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 18
test bx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
