.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
lea si, qword ptr [rbx]
add cx, 44
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
or rsi, 81
cmovz ecx, esi
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
cmovb eax, edx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 76
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
