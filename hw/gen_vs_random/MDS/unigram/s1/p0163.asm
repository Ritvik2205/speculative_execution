.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
xor di, cx
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
xor bx, 3
or ax, -17790
xor si, 48
bts rax, 117
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 93
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rcx
or al, -8
xor sil, al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
or rsi, 22
and dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
