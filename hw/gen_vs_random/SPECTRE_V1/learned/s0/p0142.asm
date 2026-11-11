.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, dl
add rdi, 83
and bl, -65
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, cl
cmp al, dl
cmp bl, cl
cmovl edi, eax
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
