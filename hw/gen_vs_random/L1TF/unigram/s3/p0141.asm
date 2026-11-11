.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
add al, 117
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
cbw
or bl, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
bswap rcx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 20
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
sub rcx, -90
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 17
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
