.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test dil, -80
xor dl, 8
test cl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test al, 91
or cl, 39
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and eax, -85386306
or al, 74
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
