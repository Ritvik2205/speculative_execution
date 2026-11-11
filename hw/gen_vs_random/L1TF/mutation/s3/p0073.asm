.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovp rcx, rdx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rsi
cmovnb ax, bx
cmp cl, -89
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
and ax, 7954
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
