.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb bl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
or dl, bl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb rax, 1183957102
jmp .bb_0.3
.bb_0.3:
lea rdx, qword ptr [rcx]
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 58
jmp .bb_0.5
.bb_0.5:
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
