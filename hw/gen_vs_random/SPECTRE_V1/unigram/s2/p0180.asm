.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dil
bts rdx, 212
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 92
lea rbx, qword ptr [rax + rbx]
setno dl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 28
adc bl, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdi + rax + 36]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 37
cmp rbx, 27
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 11
sub al, al
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 68
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
