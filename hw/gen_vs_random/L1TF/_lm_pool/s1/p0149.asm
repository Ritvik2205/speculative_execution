.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 21
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
sbb rsi, 44
btc bx, cx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub di, 41
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 9
sbb bx, 5
xor ax, 32760
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
