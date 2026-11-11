.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
btr eax, 47
xchg rcx, rax
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
setp dil
jmp .bb_0.1
.bb_0.1:
sub dl, bl
lea cx, qword ptr [rdx + rax]
sbb bl, -88
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
lea bx, qword ptr [rax + rdx + 24839]
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
add di, dx
jmp .bb_0.2
.bb_0.2:
xchg cl, cl
test al, -104
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
sbb ebx, edx
bts ecx, 225
lea rax, qword ptr [rbx]
movzx edx, dx
xchg dil, bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
btc bx, 173
mul rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
