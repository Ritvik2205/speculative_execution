.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 80
lea di, qword ptr [rdx + rsi + 63]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
or al, al
cmp al, 81
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 43
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
add al, 118
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 51
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
sbb cl, al
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
imul ax, di, 52
lea di, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
