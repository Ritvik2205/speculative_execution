.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, si
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 21
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
mov rbx, rdi
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
mov al, dil
add dl, cl
lea di, qword ptr [rdx + rdi + 84]
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
