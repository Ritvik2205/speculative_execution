.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
xchg edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
adc al, bl
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
sbb dl, -106
adc dl, dil
cmp sil, dil
xchg dl, bl
test sil, dil
adc dl, 25
sub al, cl
sub al, 11
and bl, cl
and al, -28
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
cmp rdx, rax
sub sil, 71
mov bl, al
add al, -29
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 21
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
cmp eax, 89
add bl, dl
add ax, 65
sub dl, -16
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
xchg rcx, rdx
sub al, cl
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
