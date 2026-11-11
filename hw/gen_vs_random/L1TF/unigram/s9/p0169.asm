.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 22
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
add al, -36 # instrumentation
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
cmovnbe ebx, esi
setnle bl
or di, di
xor si, -50
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
add bl, 82 # instrumentation
adc bl, dil
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
xor esi, 15
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
cwde
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
