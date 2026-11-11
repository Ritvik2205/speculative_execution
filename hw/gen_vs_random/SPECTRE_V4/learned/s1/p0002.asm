.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, bl
test eax, 1947430392
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
add al, -55
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add dil, cl
cmp cl, al
or cl, al
mov dl, bl
xor al, 57
sub al, -128
dec al
add al, -127
mov al, dl
sbb al, -14
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
