.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 100
cmovbe rax, rsi
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or al, 30
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
xor rdi, rax
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and cx, si
jmp .bb_0.1
.bb_0.1:
or edi, -88
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 39
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
cmovle rsi, rdi
and bl, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
cmovle si, bx
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
xor cx, -18
bts rax, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
