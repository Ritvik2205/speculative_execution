.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -70
test eax, -409834435
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and ax, -122
test al, dil
and di, 91
test sil, -55
test bl, 65
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or al, 24
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
