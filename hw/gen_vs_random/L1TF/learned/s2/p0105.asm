.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
sbb edx, 23
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
add ax, 32140
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
cmp ebx, 55
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
not ax
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
