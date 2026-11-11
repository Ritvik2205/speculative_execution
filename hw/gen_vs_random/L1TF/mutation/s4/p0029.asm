.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
btc cx, si
lea rsi, qword ptr [rax + rdx]
test eax, -385619864
jmp .bb_0.1
.bb_0.1:
add cl, 121 # instrumentation
cmovs edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
sbb ax, -26133
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
bt rsi, rcx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and al, -111
mov si, 20858
btr cx, si
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
