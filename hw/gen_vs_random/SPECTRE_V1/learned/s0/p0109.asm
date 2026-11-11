.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or di, -85
test al, 84
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
sbb bl, dl
and dl, -92
add al, 18
xor rax, -1905683998
add al, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
