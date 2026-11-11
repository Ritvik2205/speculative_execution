.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
add al, 13 # instrumentation
cmovno rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 4
and rsi, 65
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
add dil, 126 # instrumentation
cmovnl ax, di
cmovo rbx, rbx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, sil
lea ecx, qword ptr [rbx]
sbb ebx, 43
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 68
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 60
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
