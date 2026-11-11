.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb ecx, eax
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and cl, dil
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 99
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
test bl, 12
cmp di, -78
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
mov dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
