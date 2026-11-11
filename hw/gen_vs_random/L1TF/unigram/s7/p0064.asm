.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
test dl, dl
add cl, cl
and rdx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 18
jmp .bb_0.1
.bb_0.1:
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rbx
add dil, -97 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
xchg sil, cl
and rcx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
