.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdi, 76
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], ax
mul bl
neg cl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
lea edi, qword ptr [rbx + rsi]
lea ax, qword ptr [rdx]
add al, sil
add al, -53 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 125
imul eax
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
