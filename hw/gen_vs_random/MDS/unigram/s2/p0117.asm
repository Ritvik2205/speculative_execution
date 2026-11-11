.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 75
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and si, -121
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
bts ebx, 205
or sil, dl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 91
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovnl ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
cmovns ax, bx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
or cx, 49
cmovo edx, ecx
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
