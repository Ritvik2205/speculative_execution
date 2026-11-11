.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 86
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
mov dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
not eax
lea ecx, qword ptr [rbx]
lea dx, qword ptr [rdi + rax + 14]
test al, dil
sub rax, 57846954
bts ecx, 164
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
