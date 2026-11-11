.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
or al, -24
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
xor dil, -124
xor ax, 23633
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor dl, 34
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
test al, -7
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or bl, 43
and edx, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
