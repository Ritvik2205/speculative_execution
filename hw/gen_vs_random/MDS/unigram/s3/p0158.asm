.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -55
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
cmovle cx, ax
btr ax, di
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
cmovnl bx, si
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
btc rbx, 118
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and cl, 122 # instrumentation
cmovl edi, edi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
and rcx, rbx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 87
cmovnb eax, edx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
or cl, sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
