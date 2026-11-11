.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 44
or rsi, 46
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
test eax, esi
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
test dl, sil
xor al, 34
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
jmp .bb_0.1
.bb_0.1:
and rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
btr rax, 209
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
and cl, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and bl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
xor ax, -4010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
