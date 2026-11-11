.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, 105
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr si, di
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 92
sbb dil, -106
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
inc rax
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
cmovb ecx, edi
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add edx, 88
add bl, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
