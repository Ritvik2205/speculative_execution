.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
cmovnle dx, dx
lea bx, qword ptr [rdi]
add dl, 104 # instrumentation
sbb rdx, 7
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
xor al, bl
and rdi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rdi]
add dil, 88
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
xor al, cl
and bx, cx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
cmovl rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
