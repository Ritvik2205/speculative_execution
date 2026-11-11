.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp dl
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
adc dil, 8
add dl, 92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
adc rax, 39
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
cmovno eax, esi
lea esi, qword ptr [rbx + rax + 24]
xor dl, 4
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
dec sil
cmovnbe edx, ebx
cmovle rsi, rcx
imul si, cx
xchg ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
