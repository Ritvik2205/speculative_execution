.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
cmp dx, 99
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
bt rdi, 18
jmp .bb_0.2
.bb_0.2:
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or bl, sil
jmp .bb_0.5
.bb_0.5:
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
test ax, 13879
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
