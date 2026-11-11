.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ax, si
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 30
cmp ecx, edx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
add al, -56 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 26
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
or ax, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
