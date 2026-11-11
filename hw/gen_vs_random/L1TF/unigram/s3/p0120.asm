.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 2
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
inc sil
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
btc di, cx
jmp .bb_0.1
.bb_0.1:
cmovnbe ax, cx
mov rax, -6437636498926413678
test edi, 100
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 25
add ebx, edi
and rdx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdx]
add al, 31
and ebx, 91
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
sbb al, cl
add si, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
