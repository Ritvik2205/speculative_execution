.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 87
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
sbb rax, -1841833326
inc sil
lea cx, qword ptr [rcx + rax]
jmp .bb_0.1
.bb_0.1:
test rdi, rax
add bl, -92 # instrumentation
setnz bl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
or rax, 1362710293
mul rdi
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
xor bx, 74
add cl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
