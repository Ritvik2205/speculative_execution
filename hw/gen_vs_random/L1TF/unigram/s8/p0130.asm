.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
lea ebx, qword ptr [rsi + rcx]
lea rdi, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
add cl, 88
add al, -93 # instrumentation
cmovb rdi, rax
sbb di, si
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
imul rbx, rax, 6
adc edx, 38
setl sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
sub cl, -49
or di, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
