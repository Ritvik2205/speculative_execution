.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 96
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 53
movsx rdi, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or al, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 90
test eax, 18
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cwd
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add dl, 83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
add bl, 43
test rcx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
