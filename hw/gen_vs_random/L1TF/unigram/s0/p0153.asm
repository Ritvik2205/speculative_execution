.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
cmp sil, dil
add dl, -121 # instrumentation
movsx ax, dl
add al, 39 # instrumentation
cmovnb ax, di
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test rbx, rdi
add dl, 109 # instrumentation
cmovnb rax, rcx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sub bl, -96
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
