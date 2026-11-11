.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets al
add al, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdi]
setnle al
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
movzx ecx, dil
not al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
add dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
setnb sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
sub bl, cl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
test sil, dil
add cl, -27 # instrumentation
sets cl
cmovle ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
