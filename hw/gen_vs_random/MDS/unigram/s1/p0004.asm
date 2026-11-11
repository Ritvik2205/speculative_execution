.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, rax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
btr edx, eax
xor al, -89
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
cmovbe edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 82
and rdx, 99
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and sil, 32 # instrumentation
cmovnbe esi, eax
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 53
cmovnle di, di
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
cmovnle esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
