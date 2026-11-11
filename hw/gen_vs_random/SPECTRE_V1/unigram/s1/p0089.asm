.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -36
add cl, -35 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
mul al
lea rdx, qword ptr [rcx + rax + 58]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
mul al
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rbx]
lea di, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
cmp rax, 1189904463
and bl, 87
movzx esi, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
