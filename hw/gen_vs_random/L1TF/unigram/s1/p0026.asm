.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
seto dil
cmp dl, -56
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rax
xor al, bl
cmovnb ecx, ebx
and dx, ax
lea dx, qword ptr [rcx + rdi + 99]
inc al
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
cmovo rdx, rax
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
