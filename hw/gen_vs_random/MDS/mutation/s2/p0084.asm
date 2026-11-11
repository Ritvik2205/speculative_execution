.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and al, -103
cmovbe bx, di
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
btc rbx, 118
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
and rax, -978188247
xor eax, 2063216578
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
cmovz bx, cx
test bl, cl
cmovo si, bx
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
