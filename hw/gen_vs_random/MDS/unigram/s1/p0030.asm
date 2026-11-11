.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and al, -26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
cmovnbe rsi, rax
bts rax, rdi
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
not dil
and dx, 60
and al, 106
cmovs cx, cx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
cmovns ax, cx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
or ebx, -104
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
cmovnle ebx, ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
