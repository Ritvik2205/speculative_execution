.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, eax, 60
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add bl, 60 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
xor al, dl
setp dil
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 86
add dl, -26 # instrumentation
cmovle rbx, rdx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and bx, -118
add dx, si
add dl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 21
cmovl eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
