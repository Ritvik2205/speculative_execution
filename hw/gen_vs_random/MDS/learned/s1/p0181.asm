.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
xor al, 99
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 30
and dil, -62
or sil, cl
test dil, 46
xor cl, 24
or cl, dl
and dil, -62
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
xor ebx, 5
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
