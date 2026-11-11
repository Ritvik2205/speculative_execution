.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lea dx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
dec rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
test al, 70
lea rax, qword ptr [rdx + rcx + 41]
lea rdx, qword ptr [rdi]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
lea rbx, qword ptr [rbx + rsi + 73]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
or cl, cl
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
