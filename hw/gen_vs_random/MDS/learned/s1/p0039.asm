.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 99
and bl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
xor bl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
or al, cl
or rax, 1461812833
and al, -114
and bl, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
xor dx, 61
and rax, -2039117613
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or sil, dil
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
