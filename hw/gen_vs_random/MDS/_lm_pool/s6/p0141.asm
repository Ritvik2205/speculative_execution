.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
xor dil, dl
or al, 74
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
or cl, 7
test dl, 9
xor rax, -773894210
btc si, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or al, -75
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
