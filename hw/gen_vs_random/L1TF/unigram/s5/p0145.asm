.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
xor rdx, 122
setbe sil
add al, 21 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
imul bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 88
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
dec cl
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
xor edi, 17
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
