.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
imul rcx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
sbb cx, 99
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
add dl, 104 # instrumentation
mov edx, -377652802
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
add esi, -124
add bl, -52 # instrumentation
not eax
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
