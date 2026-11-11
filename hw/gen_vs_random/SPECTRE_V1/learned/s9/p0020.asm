.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
cmp eax, -240917296
setno cl
imul al
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 57
cmp cl, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
sub al, sil
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 80
lea ax, qword ptr [rdi + rbx + 94]
add dil, al
or si, 22
xor al, dl
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
