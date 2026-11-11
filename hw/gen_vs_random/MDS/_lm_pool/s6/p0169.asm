.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and ax, 19740
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test dl, -119
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
test edx, -372470678
and cl, -19
not sil
and al, sil
and dl, -73
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or al, dl
and sil, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
