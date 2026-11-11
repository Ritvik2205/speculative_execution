.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
movzx edx, dil
movsx si, bl
add bl, -108 # instrumentation
sbb dl, 77
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
setbe al
add sil, 20 # instrumentation
cmovnbe rcx, rsi
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
btc rdi, 96
add cl, 29 # instrumentation
setnb bl
add bl, 63
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
