.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 52
test dl, -85
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
bts bx, ax
and al, dl
or bx, 93
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 81
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
not cl
bt ax, di
cmovs ax, ax
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
or dl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
