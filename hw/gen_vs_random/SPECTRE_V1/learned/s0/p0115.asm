.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
imul ax, bx
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
or cl, dl
lea dx, qword ptr [rbx + rax + 39]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
inc sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
lea rsi, qword ptr [rsi]
cwd
test bl, al
test ecx, -1134698714
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
