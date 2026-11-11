.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, bl
xor cl, 83
test edi, esi
xor rbx, 89
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
cmovs rsi, rcx
xor dl, 40
or bx, 25
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
xor di, -83
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
or dil, bl
btr rax, 56
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and dil, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
