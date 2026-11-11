.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
xor al, cl
or rsi, 4
xor dl, 34
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
xor dl, dil
test bl, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
xor dil, 124
and cx, -8
or sil, -49
test al, 22
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
