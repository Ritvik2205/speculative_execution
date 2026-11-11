.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -46
btr cx, dx
test al, 22
and cl, bl
bts rbx, rax
test dil, -80
xor sil, -14
bt eax, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
or sil, -78
test eax, -675944960
test dl, bl
jmp .bb_0.1
.bb_0.1:
xor cl, al
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or rcx, 54
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
