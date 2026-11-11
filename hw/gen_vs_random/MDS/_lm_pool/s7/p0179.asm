.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 42
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
bt bx, si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or dl, al
xor al, dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and dil, 125
test dl, 9
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
