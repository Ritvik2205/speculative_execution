.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 95
cmp dl, dil
add dil, 27
mov cl, dl
add al, -92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
test rbx, 51
cmovnbe rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -64
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
xor sil, 1
mov rax, 21
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
cmovnb si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
