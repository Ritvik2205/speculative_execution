.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
add bl, bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
mov al, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
lea dx, qword ptr [rsi + rdx + 99]
jmp .bb_0.1
.bb_0.1:
cmovnb si, bx
imul edx
lea bx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
add dl, -53 # instrumentation
dec bx
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
