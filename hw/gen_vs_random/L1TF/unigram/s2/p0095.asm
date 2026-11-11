.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
add bl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 37
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
lea rax, qword ptr [rbx + rsi]
setno dl
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
add dl, -52 # instrumentation
adc bx, 45
and rax, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
