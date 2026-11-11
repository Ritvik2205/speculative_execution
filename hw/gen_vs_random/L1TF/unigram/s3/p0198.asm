.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], cx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
test di, 28
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
neg dil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
add bl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
test ax, 636
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
cmovle rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
