.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 109
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or bl, cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 80
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
or dl, bl
or al, al
setnp al
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
cmovnp rdi, rbx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 72
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
bt cx, bx
cmovs edi, esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
