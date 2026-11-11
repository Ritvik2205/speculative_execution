.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 99 # instrumentation
sets sil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 94
lea rbx, qword ptr [rsi + rdx + 39]
sub rcx, 1
lea rsi, qword ptr [rbx + rax]
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
dec rdi
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 28
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
lea rdi, qword ptr [rbx]
dec dil
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
lea si, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
