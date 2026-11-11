.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, sil
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
cmovnz rcx, rax
and rbx, 65
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 54
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and al, -33 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc ebx, edx
and bl, al
bt dx, ax
xor bl, -27
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdi, 61
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or cl, -77
btc rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
