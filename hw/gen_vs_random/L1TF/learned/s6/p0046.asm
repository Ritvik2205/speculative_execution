.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
cmovnle rax, rdx
and bl, 89
cmp sil, dl
test dil, -126
jmp .bb_0.1
.bb_0.1:
add dl, -70
jmp .bb_0.2
.bb_0.2:
xchg dil, bl
add dl, 22
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
bswap rax
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
