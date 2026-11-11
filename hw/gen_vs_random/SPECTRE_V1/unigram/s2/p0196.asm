.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdx + rax + 25]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
mul di
sub sil, -55
and sil, cl
cbw
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
or bl, cl
test dl, 85
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
sbb bl, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
