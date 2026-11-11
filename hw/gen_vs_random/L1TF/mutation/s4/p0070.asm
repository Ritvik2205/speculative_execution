.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and cl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
sbb ax, -26133
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
btr cx, si
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
bt rsi, rcx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
add cl, 121 # instrumentation
cmovs edx, edx
and al, -99
mov si, 20858
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
