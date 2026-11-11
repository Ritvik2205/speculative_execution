.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor al, sil
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or al, bl
or bl, cl
xor al, 55
xor eax, 984871847
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
xor rcx, 71
jmp .bb_0.1
.bb_0.1:
and al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
