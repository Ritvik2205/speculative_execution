.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, bx
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
bt si, 58
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 25
sub ax, -12040
jmp .bb_0.1
.bb_0.1:
cmp dil, 37
xor cl, 28
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
or dl, dil
lea rdx, qword ptr [rdi + rsi + 15]
cmovnb rax, rax
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
imul dx, di
add dl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
setbe dl
lea si, qword ptr [rax + rax + 75]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
