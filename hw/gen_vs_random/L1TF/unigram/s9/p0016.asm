.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and cl, dl
cmp si, 22
lea rsi, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
or rsi, 73
jmp .bb_0.1
.bb_0.1:
sub bl, 15
cmovnbe rdi, rdx
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
cmp bl, cl
add dl, 64 # instrumentation
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 91
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 6
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
