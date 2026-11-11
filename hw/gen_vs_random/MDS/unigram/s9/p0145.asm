.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edi, ebx
cmovno rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
btr bx, 188
or dl, -8
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and dil, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
xor al, sil
bt ebx, 35
or al, 25
xor cl, dil
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and dl, -1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
