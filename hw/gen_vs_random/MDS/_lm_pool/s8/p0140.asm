.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
test al, cl
test bx, 25542
bt bx, si
or dil, -78
xor cl, bl
and al, al
test eax, 1729060510
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 91
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
xor sil, -126
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
