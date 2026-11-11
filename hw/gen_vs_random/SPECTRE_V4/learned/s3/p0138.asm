.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -1102558854
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 73
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
adc rdx, rdx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
setl bl
adc rax, 1542637830
add edi, edx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
cmovz ecx, edx
add cl, -82 # instrumentation
sbb si, di
inc edx
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
not si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
