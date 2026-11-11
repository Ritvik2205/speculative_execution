.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rdx, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 70
and cl, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rax]
cmovnle rbx, rax
and al, 49
or edi, edi
btr ax, dx
btr rsi, rdi
bt eax, ecx
btr cx, 136
jmp .bb_0.1
.bb_0.1:
and al, cl
cmovbe bx, ax
xor rsi, -117
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
cmovp cx, ax
xor sil, -126
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
