.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cx, si
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
inc edx
sbb dl, sil
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 64
lea rbx, qword ptr [rsi + rsi]
xor bx, 56
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
sub ax, -27107
test esi, edx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
