.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 30
test al, cl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
add cl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 95
btc si, cx
lea rsi, qword ptr [rcx + rdi]
jmp .bb_0.2
.bb_0.2:
test dil, -126
xor al, cl
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
