.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
btc rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
btc si, cx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and cl, 126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr cx, di
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
