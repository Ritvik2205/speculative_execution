.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, dl
cdq
not rcx
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
add bl, -37 # instrumentation
dec dl
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
test bl, -92
test dl, -37
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
test ax, ax
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
inc ecx
add cl, al
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 58
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
