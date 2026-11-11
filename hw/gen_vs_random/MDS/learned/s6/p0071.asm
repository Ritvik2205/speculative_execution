.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
xor rax, -773894210
xor cl, dl
bt dx, di
and al, 87
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
bts rax, 77
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 9
xor rbx, 89
xor al, sil
test eax, 1838539683
test esi, 425331143
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor cl, -13
and rax, 1886208862
test al, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rax, -2058103810
test rdi, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
