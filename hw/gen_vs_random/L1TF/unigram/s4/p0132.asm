.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
cmovo edi, ecx
add cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
cmovnl esi, eax
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
jmp .bb_0.1
.bb_0.1:
and ebx, edx
lea bx, qword ptr [rdx + rax + 63]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
test sil, dil
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 99
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
btr eax, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
