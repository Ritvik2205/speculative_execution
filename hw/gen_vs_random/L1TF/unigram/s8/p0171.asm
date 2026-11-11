.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -87 # instrumentation
cmovnle rsi, rdx
or rbx, 18
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
imul rcx
btr ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
xor dil, cl
jmp .bb_0.1
.bb_0.1:
imul rdi, rdx, 10
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
setle bl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
adc ecx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
