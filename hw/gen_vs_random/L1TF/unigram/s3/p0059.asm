.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
sbb ebx, ebx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 35
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
lea ebx, qword ptr [rdx + rax + 45]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rcx]
add sil, -111
bt edx, ecx
cmovb ecx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
btc bx, cx
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
sub eax, 132782095
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
