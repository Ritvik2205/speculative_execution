.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
cmp cl, 57
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
cmovnb ax, bx
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
jmp .bb_0.1
.bb_0.1:
sub al, -97
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
sbb al, -14
lea cx, qword ptr [rax + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
