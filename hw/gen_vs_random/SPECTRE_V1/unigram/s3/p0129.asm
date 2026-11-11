.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
or dil, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, dl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
cmp dil, cl
lea rax, qword ptr [rdi + rbx]
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
cmp rbx, rdi
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
cmovno rdx, rsi
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
