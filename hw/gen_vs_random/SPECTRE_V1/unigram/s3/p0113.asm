.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
sbb dx, 2
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
btr bx, si
lea si, qword ptr [rax + rbx + 34]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
lea rdi, qword ptr [rbx + rdi + 37]
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
setnp dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 81
sub ebx, edi
adc ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
