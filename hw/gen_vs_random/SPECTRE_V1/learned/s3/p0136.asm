.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
dec dl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
cmp cl, 3
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
jmp .bb_0.1
.bb_0.1:
add al, 110
jbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 95
dec bl
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
adc sil, -18
mov rsi, 8418490294875847673
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
