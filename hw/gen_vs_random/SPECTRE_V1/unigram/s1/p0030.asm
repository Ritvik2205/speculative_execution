.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, al
add al, -73 # instrumentation
setnbe al
lea ax, qword ptr [rcx + rax]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor rax, -2035087432
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
cmp sil, cl
xor sil, 1
movsx bx, cl
cmovnz rdi, rax
imul bl
or rdx, 90
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 73
lea di, qword ptr [rbx + rbx]
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
