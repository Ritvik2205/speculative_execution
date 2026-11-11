.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 51
or al, bl
not sil
cmovnbe di, cx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
bswap rsi
lea rax, qword ptr [rbx + rcx + 97]
imul cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 98
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
lea rdi, qword ptr [rax + rbx]
sbb rsi, 77
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 65
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
