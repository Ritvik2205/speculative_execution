.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdi + rdi + 96]
test dil, -126
cmovb edi, ecx
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
lea ecx, qword ptr [rcx + rdx + 55]
add dl, -56 # instrumentation
cmovs rax, rdi
lea dx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 79
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
cmovs ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
