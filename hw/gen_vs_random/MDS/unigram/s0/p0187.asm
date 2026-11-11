.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 84
or ax, 28091
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 48
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 54
bts rax, 149
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
cmovo ax, ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 4
not al
and di, bx
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and dl, -7
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
