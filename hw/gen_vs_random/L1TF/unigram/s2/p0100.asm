.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
dec dx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], cx
add al, sil
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
xor dil, bl
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
imul dx, ax
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
movzx ebx, dx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
