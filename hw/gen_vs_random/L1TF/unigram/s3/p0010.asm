.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul di, dx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 66
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, 39 # instrumentation
lea ax, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
cmovnp rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
xchg dil, dl
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 36
lea rdi, qword ptr [rdx]
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
