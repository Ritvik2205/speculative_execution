.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 18
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
xchg al, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
adc al, dil
inc cl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
btr bx, 86
add cl, -36
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 65
lea dx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
