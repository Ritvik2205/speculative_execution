.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 57
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
or bl, -54
test rdx, 67
and sil, sil
xor al, 34
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 84
test al, 127
not cl
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
or rsi, 67
test al, dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or sil, -49
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
