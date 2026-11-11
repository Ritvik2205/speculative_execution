.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
lea ebx, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdx
lea ecx, qword ptr [rax + rbx + 2]
cmovb eax, esi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 90
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and dl, al
lea rbx, qword ptr [rsi + rsi]
add cl, 69 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
lea di, qword ptr [rax + rbx + 25]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
