.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, cx
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 79
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
or dl, dil
xor dil, -3
xor rax, -843636050
xor bx, 65
jmp .bb_0.2
.bb_0.2:
bt di, si
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
