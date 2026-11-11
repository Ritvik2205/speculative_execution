.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 110
add cx, 59
xor dil, sil
inc edx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
or dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
not dl
add dl, 43 # instrumentation
lea rax, qword ptr [rdx + rdi]
jmp .bb_0.1
.bb_0.1:
add sil, 18
cmovnbe esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
or dl, 41
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
