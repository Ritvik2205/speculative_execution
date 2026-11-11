.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edi
xor bl, bl
xchg rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
add al, dil
jmp .bb_0.1
.bb_0.1:
and cx, dx
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
sub al, cl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 42
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
