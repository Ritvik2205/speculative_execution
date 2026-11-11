.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
lea rsi, qword ptr [rbx + rax]
add dl, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add cl, 29 # instrumentation
setnb al
or sil, sil
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
neg rax
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 34
lea eax, qword ptr [rbx + rsi + 13]
cbw
cmovl esi, ecx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
