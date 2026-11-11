.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdx, rbx
or dx, 55
test eax, 645518295
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
sub al, 26
jmp .bb_0.1
.bb_0.1:
bswap eax
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmp al, 27
sbb edx, edx
lea rax, qword ptr [rbx + rsi + 16229]
xchg bl, dl
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
cmovbe eax, esi
cmovnz rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
