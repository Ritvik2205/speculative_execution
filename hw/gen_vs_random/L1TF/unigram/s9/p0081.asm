.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rbx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
add cl, 55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and cl, 79
cmovns cx, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
movzx rbx, bx
jmp .bb_0.1
.bb_0.1:
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
imul rbx
add dl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 9
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmp rbx, 66
bt rdi, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
