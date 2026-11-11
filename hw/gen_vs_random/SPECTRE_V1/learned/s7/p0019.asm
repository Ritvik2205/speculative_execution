.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
mul rcx
cmp rax, 1189904463
sub rax, -1628299544
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add sil, -68
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
test rbx, 69
or ebx, -124
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
add ax, 6980
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
