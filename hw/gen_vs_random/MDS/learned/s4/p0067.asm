.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -696456144
or rdi, 21
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
or dl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or cl, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
