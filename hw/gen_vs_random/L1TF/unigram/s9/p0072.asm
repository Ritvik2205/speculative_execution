.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
cmp rdx, 75
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
btr bx, di
adc bl, -14
and rcx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
mov rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
