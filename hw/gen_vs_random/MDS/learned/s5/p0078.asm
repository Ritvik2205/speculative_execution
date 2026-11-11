.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor sil, -46
test edx, -1561252782
and bl, sil
not bl
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor sil, -15
test bl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
test dl, -119
xor rax, -270810088
test edi, -1252846009
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
bt si, dx
xor ax, -6793
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
