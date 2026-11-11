.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, rdx
or ebx, eax
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
lea ecx, qword ptr [rbx + rbx]
sbb dil, al
or rax, 1362710293
jmp .bb_0.1
.bb_0.1:
cmovnbe rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
dec ecx
cmovp ax, dx
add dl, -52 # instrumentation
adc dx, 11
cmovle eax, edx
sbb sil, cl
lea edx, qword ptr [rbx + rsi + 66]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
