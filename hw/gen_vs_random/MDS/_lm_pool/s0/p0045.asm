.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
test dl, 48
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
btr cx, ax
and al, 75
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and ax, 31082
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor dl, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
or ax, -11837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
