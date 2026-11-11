.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
cmovnle rbx, rcx
xor ebx, edi
lea ax, qword ptr [rax + rcx + 95]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
cmovnl edi, edx
and rdi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdi]
lea rax, qword ptr [rdx + rdi]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and dl, -111
add sil, sil
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
