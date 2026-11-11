.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and al, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and al, 33 # instrumentation
cmovnle ebx, ecx
cmovnb di, cx
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
xor dl, -125
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
cmovnp rbx, rax
test ecx, 1044879383
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
xor cl, -79
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and ax, -30938
not dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
