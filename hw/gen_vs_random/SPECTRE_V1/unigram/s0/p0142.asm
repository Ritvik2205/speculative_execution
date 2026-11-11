.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and bl, 124
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], sil
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or eax, esi
add dl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
inc rax
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
neg rdi
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 28
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 94
test si, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
