.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe cx, si
cmovns edi, esi
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
imul dx, si, 17
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
dec bl
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
bt rax, 5
setz al
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
lea rdx, qword ptr [rsi + rdx + 27]
imul dl
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
imul cx, di
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
