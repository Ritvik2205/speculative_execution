.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
test dl, 48
xor dl, 40
and esi, 11
or dil, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
test dil, sil
jmp .bb_0.3
.bb_0.3:
test cl, 54
test dl, 27
not bl
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
