.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
neg rcx
lea cx, qword ptr [rdi + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
add cl, 125 # instrumentation
adc cl, dil
setb al
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
mov cl, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, sil
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
or bx, 18
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
add cl, -36
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
