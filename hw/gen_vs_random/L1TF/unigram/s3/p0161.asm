.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], 34
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 19
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
lea ax, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmovp rdi, rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
lea ecx, qword ptr [rbx + rsi + 38]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add al, 71 # instrumentation
setp bl
bt si, ax
lea edx, qword ptr [rbx]
inc bl
add dl, 43 # instrumentation
lea rdi, qword ptr [rdx + rsi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
