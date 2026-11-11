.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rcx + rdx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmp cl, cl
sets dl
add rsi, -60
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -65
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
add al, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], esi
or rbx, 22
sbb al, -14
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 25
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
sbb cl, dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
