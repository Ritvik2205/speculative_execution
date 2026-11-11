.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
add cl, bl
cmp bx, -21
imul rsi, rbx
add dl, 121 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
mul rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
add bl, 107 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 30
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 25
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
btr bx, si
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
btc ecx, ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
cmovo di, bx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rbx, -64
sub bl, 15
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add eax, -1
and rdx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
