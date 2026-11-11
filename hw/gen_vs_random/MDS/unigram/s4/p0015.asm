.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
cmovp esi, eax
cmovnbe rcx, rax
test dx, di
xor sil, -14
not rdx
cmovb dx, cx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
test rbx, 13
or rax, rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and dl, -73
test sil, 17
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or esi, -110
btc si, bx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
