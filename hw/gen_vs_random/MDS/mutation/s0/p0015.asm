.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 75
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
cmovbe bx, di
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
btc rbx, 118
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
jmp .bb_0.1
.bb_0.1:
cmovo si, bx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor eax, 984871847
test bl, cl
and rax, -2058103810
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
cmovz bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
