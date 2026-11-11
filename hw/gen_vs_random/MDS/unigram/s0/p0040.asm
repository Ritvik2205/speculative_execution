.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
bt cx, dx
and rbx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rbx]
xor al, 9
btc rax, 110
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
cmovnle dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and dl, -1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
btr ax, 193
or sil, al
cmovz edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
btr edx, 255
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
