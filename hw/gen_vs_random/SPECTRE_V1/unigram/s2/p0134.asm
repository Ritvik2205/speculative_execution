.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
lea rax, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 93
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rax
add al, -117 # instrumentation
not rsi
cmp rbx, 47
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
cmp bl, -114
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
dec dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovz edx, edi
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 89
btc edx, 169
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
