.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
add dl, 125 # instrumentation
cmovbe rax, rax
lea si, qword ptr [rcx + rdi + 49]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add al, al
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 21
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
add sil, 108 # instrumentation
setl sil
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 47
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 91
cmovb di, si
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
setnbe dl
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
