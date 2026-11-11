.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -96
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 61
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
cmovo rcx, rsi
adc al, -6
and al, -68
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmp di, -78
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
btc edx, edx
sub bx, 83
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
