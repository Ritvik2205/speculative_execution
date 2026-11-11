.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 21
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 78
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
add sil, 12 # instrumentation
cmovnb ecx, esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
or bl, -5
sbb edx, ecx
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
