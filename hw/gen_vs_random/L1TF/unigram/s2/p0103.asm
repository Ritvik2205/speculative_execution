.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, cl
sub dx, 34
test dl, -37
sub al, -75
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
dec cx
add cl, 72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 71
inc dl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add al, -63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
imul rdx, rdi
cmp cx, 3
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 37
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
