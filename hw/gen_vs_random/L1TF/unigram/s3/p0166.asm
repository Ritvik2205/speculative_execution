.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
add edi, 48
imul si, ax
mov rsi, 1
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and al, -99
add eax, 760523556
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
test rdi, 5
sbb cl, -123
and rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
