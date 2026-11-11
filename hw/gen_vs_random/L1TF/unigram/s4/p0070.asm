.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, sil
or bx, cx
add bl, 79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
imul rdi, rsi, 18
sbb cx, ax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
lea rcx, qword ptr [rax]
add dl, -103 # instrumentation
cmovnz dx, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
sub rcx, rdx
dec ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
