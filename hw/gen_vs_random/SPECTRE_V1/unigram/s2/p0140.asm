.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx + rdx + 10]
add dl, 35 # instrumentation
cmovnz rax, rbx
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
cmp eax, ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 88
add al, 112 # instrumentation
setl al
add bl, 32 # instrumentation
sbb sil, bl
cmovno rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
