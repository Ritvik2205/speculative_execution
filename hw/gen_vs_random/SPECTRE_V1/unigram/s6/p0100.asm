.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
xor cl, -40
jle .bb_0.1
jmp .exit_0
.bb_0.1:
bts cx, si
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
add ax, 23362
test rbx, 22
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and cl, bl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
test rbx, 43
cmovnbe rsi, rbx
and cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
