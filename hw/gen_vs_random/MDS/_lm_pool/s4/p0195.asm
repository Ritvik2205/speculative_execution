.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and dx, ax
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
xor ebx, 51
xor sil, -15
xor sil, 27
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
xor dl, cl
xor cl, bl
test dl, cl
and dil, -62
or dil, dl
and si, -121
jmp .bb_0.1
.bb_0.1:
test al, 66
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
