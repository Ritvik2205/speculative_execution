.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rsi, 32
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
xor dl, 64
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
test dl, -37
test rbx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
cmovle rsi, rsi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
btc rdx, rbx
test bl, 45
add al, -79 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
