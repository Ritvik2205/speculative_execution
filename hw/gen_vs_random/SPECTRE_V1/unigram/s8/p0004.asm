.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
bts dx, 26
xor ecx, 62
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
add al, 22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
add dl, 38 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -15 # instrumentation
movzx ax, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
dec dil
setnp cl
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
