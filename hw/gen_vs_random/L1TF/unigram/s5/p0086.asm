.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, cl
add bl, 113 # instrumentation
setbe dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
add cl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
add dl, 85 # instrumentation
cmovp dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
add dl, -70
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor dl, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
imul ecx, edi
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
