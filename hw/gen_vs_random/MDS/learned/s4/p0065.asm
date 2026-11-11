.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
bt si, cx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
setnbe bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 48
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
bts rax, 149
and al, -56
xor ax, 24729
or ax, 19243
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
cmovs edx, eax
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
cmovno dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
