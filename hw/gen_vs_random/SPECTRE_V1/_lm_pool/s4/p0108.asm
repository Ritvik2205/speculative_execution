.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
test dl, bl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
add al, -13
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
