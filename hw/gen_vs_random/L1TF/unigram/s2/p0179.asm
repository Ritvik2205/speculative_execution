.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rcx
or ax, cx
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
inc sil
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
test ax, 22956
cwde
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
btc cx, 73
xchg eax, edi
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
cmovnbe rdx, rdi
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
