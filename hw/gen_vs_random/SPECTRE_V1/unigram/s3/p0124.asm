.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
sbb bl, cl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
sbb rcx, 58
lea eax, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
nop
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setnz cl
xor al, sil
lea rsi, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
