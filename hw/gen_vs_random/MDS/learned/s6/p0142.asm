.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
xor dl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test bl, 65
or sil, al
test al, sil
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
test eax, 158941032
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
