.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 49
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
test ax, 636
xor dil, sil
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 38
sub dil, 87
test bl, -92
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
cmp dil, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
