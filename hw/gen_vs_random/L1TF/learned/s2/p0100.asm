.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 61
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
xor rax, 20
cmovno bx, dx
xor bl, dil
adc sil, 14
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
or al, bl
add al, -46
xor al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
