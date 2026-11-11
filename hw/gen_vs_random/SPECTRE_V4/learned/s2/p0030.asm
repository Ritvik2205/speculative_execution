.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, 74
imul rax, rdx
test bl, cl
xor cx, dx
add al, -55
mov cl, dl
sub bl, -98
mov dil, bl
cmp rax, -1547540200
sub dl, 107
or rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
