.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
add dl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
add al, -36 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and sil, 11
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 79
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
xor dil, al
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and al, -54
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
