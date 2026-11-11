.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 107 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 30
mul rax
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
cmp bx, 90
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 25
imul rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
sbb dl, cl
add cl, bl
btc ecx, ecx
xor al, al
btr bx, si
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
