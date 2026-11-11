.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, si
sub dil, sil
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
dec rsi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test ax, ax
test dil, dl
test rsi, 50
add dil, bl
test rdx, 32
test al, 70
sub sil, -55
cwde
xor sil, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
