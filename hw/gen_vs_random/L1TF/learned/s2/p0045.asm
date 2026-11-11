.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
cmovp edx, ecx
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 15
bt ecx, 29
bt ecx, 18
and al, -99
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
mov di, ax
xor cl, 89
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
lea ax, qword ptr [rcx]
xor cl, cl
lea esi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
