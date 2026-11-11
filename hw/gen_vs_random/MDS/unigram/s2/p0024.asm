.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and bl, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
or cl, 119
or edx, esi
xor dl, dil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and edi, 23
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
bts rsi, 205
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
cmovnb ebx, esi
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
