.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 63
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 79
cmovns rcx, rsi
jmp .bb_0.1
.bb_0.1:
test bx, 4954
cmovnz bx, dx
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
xor si, 91
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and dil, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
or dl, -8
or dil, bl
cmovl di, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
bts bx, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
xor rax, -843636050
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
