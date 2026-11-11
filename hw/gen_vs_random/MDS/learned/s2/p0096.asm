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
bt edx, 254
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
bt edi, 254
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
xor eax, 1170472196
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and ax, -22368
not cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
