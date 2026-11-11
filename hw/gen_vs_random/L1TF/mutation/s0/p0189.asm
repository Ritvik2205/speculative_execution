.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdx, rbx
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
test eax, 899472326
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
sub al, -47
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
or dx, 55
jmp .bb_0.1
.bb_0.1:
xchg bl, dl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
sbb edx, edx
bswap eax
lea rax, qword ptr [rbx + rsi + 16229]
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
cmp al, 27
cmovnz rbx, rax
cmovbe eax, esi
jmp .bb_0.2
.bb_0.2:
imul rbx, rax, 6
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
xor eax, ecx
lea ebx, qword ptr [rsi + rbx + 65254]
add dl, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
xor ax, 30996
sbb sil, -79
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
