.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
sbb dil, al
xor rcx, 15
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
lea rsi, qword ptr [rax + rcx]
jmp .bb_0.1
.bb_0.1:
mov cx, di
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
add dil, 98 # instrumentation
inc dil
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 2
add dl, -53 # instrumentation
lea rax, qword ptr [rcx + rbx + 75]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
