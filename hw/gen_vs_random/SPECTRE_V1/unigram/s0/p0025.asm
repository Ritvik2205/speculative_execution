.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, bl
add cl, -23 # instrumentation
cmovl cx, si
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
add al, dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 31
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
setnp al
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
or dl, 41
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
bt edx, esi
add al, -94 # instrumentation
cmovnle rcx, rdx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
mul rcx
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
