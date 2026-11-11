.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
cmp cl, -89
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
cmovnb ax, bx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
cmovp rcx, rdx
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax + rsi]
sbb al, 61
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
sub al, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
