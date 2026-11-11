.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
mov cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
bts rcx, 48
mul cx
add ax, 8031
add al, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
inc dx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
cmp dl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
