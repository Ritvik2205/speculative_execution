.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
setl al
or dl, -92
add dl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
mov al, al
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
imul ax
test cx, 45
sub rdx, rax
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
dec ebx
sub al, -3
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
