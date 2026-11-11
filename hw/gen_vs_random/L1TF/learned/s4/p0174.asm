.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843
movzx edx, cl
jmp .bb_0.1
.bb_0.1:
or al, -87
jmp .bb_0.2
.bb_0.2:
add al, 50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
xor cl, cl
mov bl, al
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 34
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
