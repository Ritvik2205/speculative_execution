.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
xor dl, 40
and cx, -8
test dil, al
xor ax, -23364
or dl, sil
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and al, -67 # instrumentation
cmovnle rsi, rax
cmovbe rdx, rcx
xor ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
cmovno di, di
test si, 13
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 81
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
test rax, -708244380
and sil, -69
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
cmovs rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
