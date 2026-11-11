.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 91
test al, 66
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
xor cl, 15
xor al, 55
test dl, cl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
xor cl, 24
or al, dil
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
or sil, -49
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
