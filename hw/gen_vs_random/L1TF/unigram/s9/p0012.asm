.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
or rcx, rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 86
dec dx
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
imul ax
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
sub rcx, rbx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
test dil, -126
test esi, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
