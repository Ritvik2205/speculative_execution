.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwd
lea si, qword ptr [rdi + rax + 40]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
sub dil, dl
mov al, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
add dl, -4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
mul si
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
adc sil, dil
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
cmp cx, 19
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
