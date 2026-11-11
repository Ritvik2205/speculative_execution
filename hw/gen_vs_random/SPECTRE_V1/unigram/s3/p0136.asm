.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rcx
or rbx, 19
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, edx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 81
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
sub cl, cl
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 89
mul cx
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
