.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
xor sil, -15
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor sil, dl
jmp .bb_0.2
.bb_0.2:
test eax, 1838539683
test al, 91
xor dil, bl
or rax, 1461812833
test eax, -675944960
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
