.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
cmovbe cx, si
and eax, ebx
or al, bl
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
or dil, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
xor al, 55
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
cmovnle rsi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
test ax, si
and sil, -128 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
not sil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 30
cmovb ax, dx
and al, -23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
