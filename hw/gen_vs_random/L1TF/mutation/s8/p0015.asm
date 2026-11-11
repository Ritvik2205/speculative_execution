.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dil
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
btr eax, 47
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
xchg rcx, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
sub dl, bl
add di, dx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
lea bx, qword ptr [rax + rdx + 24839]
sbb bl, -88
lea cx, qword ptr [rdx + rax]
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
