.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
xor bl, -5
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
or sil, cl
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add dl, -70
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 29
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
jmp .bb_0.3
.bb_0.3:
cmp di, -78
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
