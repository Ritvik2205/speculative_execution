.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
xor rax, -404206377
or sil, al
test esi, 425331143
test bl, -9
not dil
and rax, 498847670
and bl, 68
or eax, -1777347252
not al
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
test dl, -85
xor dil, -5
xor dl, dil
and sil, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
or al, -61
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
