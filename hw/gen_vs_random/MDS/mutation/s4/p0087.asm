.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and dl, cl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
or al, cl
cmovnl di, dx
jmp .bb_0.1
.bb_0.1:
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 79
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
