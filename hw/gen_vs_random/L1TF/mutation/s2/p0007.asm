.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -37 # instrumentation
dec cl
lea edx, qword ptr [rcx + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and ax, 26813
add edi, eax
not dil
setnz dil
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add cl, 42 # instrumentation
lea esi, qword ptr [rcx + rsi]
lea ax, qword ptr [rdx + rbx + 50836]
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
add bl, bl
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
imul rdx, rdx
add cl, -103 # instrumentation
cmovnz cx, dx
jmp .bb_0.2
.bb_0.2:
lea dx, qword ptr [rsi + rcx + 45165]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
add bl, -22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
not di
lea ebx, qword ptr [rax + rdx + 2427]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
or rsi, rsi
adc dl, dl
setnle dil
inc eax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 77
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
lea rax, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
