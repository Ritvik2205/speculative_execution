.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
lea eax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
or dil, 98
sbb bl, bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle cx, bx
sbb bl, dl
sbb dl, bl
imul ebx, edi, 37
dec rax
and dil, -114
cmovnle cx, ax
bts dx, 207
cmovnb rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
