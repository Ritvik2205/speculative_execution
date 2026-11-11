.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
cmovnp bx, di
add al, cl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
test cl, dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -42 # instrumentation
lea ax, qword ptr [rbx + rdx]
cmovbe rsi, rax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
