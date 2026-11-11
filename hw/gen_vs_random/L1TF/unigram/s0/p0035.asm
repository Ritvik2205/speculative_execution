.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
inc ecx
cmovo rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
sub bl, bl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
or sil, -44
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
cmp ax, 7046
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
btc edx, edx
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
