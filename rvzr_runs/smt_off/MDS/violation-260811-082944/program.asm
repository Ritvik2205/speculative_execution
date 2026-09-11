.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx] 
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx 
btc rbx, 35 
cmovbe bx, di 
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi] 
and al, 84 
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2 
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4 
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx 
jmp .bb_0.1 
.bb_0.1:
test bl, cl 
xor eax, -127 
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx] 
cmovo si, bx 
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl 
cmovz bx, cx 
and rax, -636362975 
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx 
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl 
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx] 
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
