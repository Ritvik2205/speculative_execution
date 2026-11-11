.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
test dil, -126
add dl, -1
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 15
or cl, -78
jmp .bb_0.1
.bb_0.1:
test rcx, rbx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
or cx, 40
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
