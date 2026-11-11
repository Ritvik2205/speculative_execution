.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
sbb dil, sil
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 97
cmovle rax, rax
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
setnle cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
