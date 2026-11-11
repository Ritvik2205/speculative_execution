.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle eax, edx
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
xor al, sil
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
jmp .bb_0.1
.bb_0.1:
or bl, dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 80
jmp .bb_0.3
.bb_0.3:
xchg edx, ebx
jmp .bb_0.4
.bb_0.4:
test dl, 84
add ecx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
