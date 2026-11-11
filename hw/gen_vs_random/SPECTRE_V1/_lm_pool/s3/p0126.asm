.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
lea rax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 28
or al, 100
cmp dl, cl
and dl, -109
lea edi, qword ptr [rax]
cmp sil, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
lea bx, qword ptr [rdi + rdi + 40]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
