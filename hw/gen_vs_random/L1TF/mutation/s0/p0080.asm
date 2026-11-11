.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 64 # instrumentation
sbb bl, dl
xor al, al
or cl, 105
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
test al, -32
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
sbb al, -50
jmp .bb_0.1
.bb_0.1:
sub rax, -1628299544
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
lea ecx, qword ptr [rdx]
mov bl, dl
xor di, cx
cmp cl, -89
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
