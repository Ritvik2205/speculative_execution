.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz di, ax
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
test ax, 30932
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and dl, 125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
or dl, bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
btr bx, 100
xor eax, -885380838
test cl, -18
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and al, al
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
