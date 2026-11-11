.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
setnbe sil
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
sub bl, 15
jmp .bb_0.1
.bb_0.1:
add cl, 88
sub cl, sil
btr rax, rbx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 32
cmovnz bx, ax
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
add al, -124 # instrumentation
setnz al
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
