.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
lea esi, qword ptr [rdi]
sbb cl, al
imul rsi, rsi, 72
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
lea di, qword ptr [rdx]
cmovp edi, ecx
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
inc dil
lea edi, qword ptr [rdi]
adc cx, 77
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
lea eax, qword ptr [rcx]
lea ecx, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
