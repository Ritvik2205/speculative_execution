.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, 1332762061
inc rdi
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
lea rax, qword ptr [rbx + rdx + 34714]
add dl, 38 # instrumentation
setp dil
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
sub bl, bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
add cl, -93 # instrumentation
setnb cl
cmp bl, -114
and sil, 11
add al, -25 # instrumentation
sbb ax, si
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
xor al, al
test bl, -8
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
