.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rbx + rbx + 78]
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
imul rbx
setb dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 96
add dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add ecx, 80
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
test al, -32
sub al, dil
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
lea di, qword ptr [rcx]
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
