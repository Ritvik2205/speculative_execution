.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
sub al, al
bswap eax
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 59
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 76
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, dil
add dil, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
