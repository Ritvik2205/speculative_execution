.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
add bl, -53 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
sub edi, 32
add cl, -84 # instrumentation
xchg rdx, rcx
test ebx, 24
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
adc al, sil
nop
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
inc al
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
cmp dl, 64
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
lea rax, qword ptr [rdx + rcx + 100]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
