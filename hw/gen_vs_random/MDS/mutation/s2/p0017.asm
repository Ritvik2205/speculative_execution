.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
cmovbe bx, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and al, -103
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
btc rbx, 118
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
jmp .bb_0.1
.bb_0.1:
and rax, 452940266
test bl, cl
cmovz bx, cx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor eax, -885380838
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
cmovo si, bx
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
