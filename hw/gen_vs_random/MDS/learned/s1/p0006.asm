.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or rsi, 14
add dl, al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor al, 122
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
test cl, -86
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or sil, bl
and rbx, 65
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
