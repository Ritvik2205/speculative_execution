.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
add al, 19 # instrumentation
setnz sil
add dl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
mul al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 42
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp ax, cx
lea edx, qword ptr [rsi]
test al, 42
bts di, 230
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
inc rdx
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
cmovnb rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
