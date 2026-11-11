.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
cmovnb rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -119
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 78
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
lea rdi, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], dx
add dl, -4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
add eax, -55403434
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
add dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
