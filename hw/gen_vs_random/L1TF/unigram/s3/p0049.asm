.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
add dl, -10 # instrumentation
cmovns esi, edi
cmp sil, sil
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
xor rbx, 36
lea ax, qword ptr [rsi + rax + 56494]
cmp sil, al
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
add al, 12 # instrumentation
cmovnb esi, eax
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
test ecx, 14
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
