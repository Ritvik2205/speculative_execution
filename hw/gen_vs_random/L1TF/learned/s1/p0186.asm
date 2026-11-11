.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
lea cx, qword ptr [rax + rcx]
xor cl, cl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 21
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and cl, 28
jb .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 63
bswap rdx
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
cwd
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 118
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
xchg rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
