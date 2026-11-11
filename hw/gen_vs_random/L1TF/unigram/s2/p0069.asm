.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, ax
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 79
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 65
add sil, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
bts esi, 243
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea rax, qword ptr [rsi + rdx]
imul rax, rdi, 34
jmp .bb_0.1
.bb_0.1:
add al, -67 # instrumentation
setz dil
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
add sil, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
cmp ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
