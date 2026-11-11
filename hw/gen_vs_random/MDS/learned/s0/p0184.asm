.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
or al, dil
test rbx, 92
or al, 24
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or dl, sil
test dil, -80
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
test bl, sil
or rcx, 54
xor ax, -6793
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
bt ax, cx
xor dil, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
