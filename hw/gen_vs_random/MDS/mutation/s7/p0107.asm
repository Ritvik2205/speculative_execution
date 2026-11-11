.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
cmovnl di, dx
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
or al, cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
cmovs eax, ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
bts cx, 14
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test rax, -1579405415
and bl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovnb di, bx
or dl, bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
