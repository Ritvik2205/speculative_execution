.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not cx
or dl, 85
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
bt rdx, rcx
and dl, -73
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and dl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
not sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
or rbx, -77
cmovns cx, bx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
or cl, 7
cmovnle rax, rdi
xor bx, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
