.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
or dil, bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
or si, 65
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
or sil, -8
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and cx, bx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and al, -64 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
cmovo dx, cx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 43
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
