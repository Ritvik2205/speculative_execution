.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
btc si, ax
test di, 93
or bl, sil
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
or cl, 105
jmp .bb_0.1
.bb_0.1:
and dx, 66
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
jmp .bb_0.2
.bb_0.2:
imul rbx
test cx, 23
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
