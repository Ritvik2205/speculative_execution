.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
cmovns si, ax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
sub dil, -39
lea rdx, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
lea dx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add al, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
btr rdx, 203
sub di, cx
sub edi, 27
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
sub rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
