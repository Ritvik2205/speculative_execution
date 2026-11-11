.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
cmovle rsi, rdi
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
mul edi
cmovnb cx, ax
dec edx
xchg dx, bx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 33
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
xor edx, eax
or cl, 105
add dl, 55 # instrumentation
lea edx, qword ptr [rcx + rbx + 30]
lea rcx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
