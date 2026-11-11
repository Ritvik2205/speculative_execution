.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmovl eax, ebx
and al, 84
xor ax, 23633
bts edi, 248
or dl, -21
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 99
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
or sil, -49
btc cx, ax
cmovb rax, rbx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
not cl
cmovs eax, edi
cmovz cx, cx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
or rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
