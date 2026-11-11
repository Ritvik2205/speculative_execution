.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
add al, bl
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
lea rdx, qword ptr [rax + rdi]
setle sil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add dl, 63 # instrumentation
cmovle bx, ax
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
xor bl, al
add dl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 18
xor dx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
