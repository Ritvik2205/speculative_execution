.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
xchg edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
add al, 120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
imul eax
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
xor ecx, 39
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 11
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rbx]
xchg edi, esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
movsx ax, dl
movzx ecx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
