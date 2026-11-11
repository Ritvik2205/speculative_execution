.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
cmp dx, 91
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cbw
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
