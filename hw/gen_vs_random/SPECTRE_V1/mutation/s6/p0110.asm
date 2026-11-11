.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mov dl, al
cmp eax, -240917296
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 38 # instrumentation
setp sil
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
bts cx, dx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
lea dx, qword ptr [rdx + rax]
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
