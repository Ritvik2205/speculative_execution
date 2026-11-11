.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
add dl, 53
lea rcx, qword ptr [rdi + rsi + 67]
add cl, 56 # instrumentation
cmovns edx, ecx
cmp dl, 13
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dl
inc dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
add al, -92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
adc bl, cl
btc di, 76
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
adc bl, 27
add cl, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
