.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, cx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and dl, -73
test rbx, 46
and dil, 125
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
or al, dil
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
jmp .bb_0.2
.bb_0.2:
or eax, ecx
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
or al, dl
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
or al, cl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and sil, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
