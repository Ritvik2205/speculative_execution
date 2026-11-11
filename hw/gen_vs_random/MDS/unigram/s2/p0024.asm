.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
or ax, 19243
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
cmovz eax, ecx
xor rax, rdi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
or di, -18
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
test edi, 76
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
bt esi, eax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and cl, 127
cmovnle ecx, edx
or di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
