.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 4
add bl, -37 # instrumentation
dec al
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
bts dx, dx
lea rbx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 9
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sub si, 83
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rbx]
xor rbx, 41
imul cx, dx, 14
sbb al, sil
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
