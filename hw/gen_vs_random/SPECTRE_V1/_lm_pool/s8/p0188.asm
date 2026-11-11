.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
cmp edi, 1
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovle bx, cx
imul rbx, rdi
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
bts cx, 19
sub al, -1
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor dl, dil
add al, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
