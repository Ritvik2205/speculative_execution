.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
or cx, cx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, al
cmovp di, ax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 97
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
or rbx, 76
cmovp dx, ax
add rdi, 41
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and bl, sil
add al, 27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
