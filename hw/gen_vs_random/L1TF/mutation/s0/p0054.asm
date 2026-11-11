.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 38
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
sbb rax, 1183957102
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovo rbx, rdi
sbb cl, -11
cwde
btc rax, 14
xor ax, -16232
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
test dl, dl
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
test ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
