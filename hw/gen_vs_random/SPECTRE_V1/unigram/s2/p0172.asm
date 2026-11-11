.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
add al, -53 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], 9
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 55
setp cl
add al, 88 # instrumentation
sbb al, 81
and cl, bl
inc rdi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
add dl, 38 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
cmovnbe rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
