.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 62
test dl, bl
test al, dl
test al, dil
test al, -81
xor rdi, -9
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor al, cl
xor di, -83
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 14
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
