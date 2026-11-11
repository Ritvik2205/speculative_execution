.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
cmp eax, 100
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
add dl, 38 # instrumentation
setp sil
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
bts cx, dx
lea dx, qword ptr [rdx + rax]
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
