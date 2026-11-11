.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 31
xchg eax, esi
and dil, 58
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 4
xor al, 38
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or bl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
xor dl, al
adc al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
