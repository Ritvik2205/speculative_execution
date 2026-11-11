.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 95
or al, -48
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
test al, -32
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
jmp .bb_0.3
.bb_0.3:
test al, cl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
