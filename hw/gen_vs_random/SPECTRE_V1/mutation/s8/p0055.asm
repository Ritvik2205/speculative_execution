.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
add sil, -68
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 52 # instrumentation
sets dil
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
add bl, -104 # instrumentation
lea rbx, qword ptr [rdi + rax + 43013]
adc bl, -76
cmp cl, cl
inc cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
