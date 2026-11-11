.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
add cx, -103
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
cmovp dx, dx
dec dil
cmovb edx, esi
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
add al, 120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
sbb dl, al
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
