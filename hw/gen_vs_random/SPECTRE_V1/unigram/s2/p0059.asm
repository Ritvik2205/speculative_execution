.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 24 # instrumentation
lea rsi, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
sbb eax, -417098439
xchg dil, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
cmovz eax, ecx
add al, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, -55
imul eax
lea esi, qword ptr [rdi + rbx + 63]
bt ax, ax
cmovs dx, cx
add al, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
