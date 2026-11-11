.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
add al, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdi]
cmovbe di, cx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], cx
xor dil, cl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or rbx, 78
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
test bl, -8
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
sbb esi, 13
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 11
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
