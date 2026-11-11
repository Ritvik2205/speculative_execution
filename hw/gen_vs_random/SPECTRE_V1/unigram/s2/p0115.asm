.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
sbb sil, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle cx, di
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 71
lea eax, qword ptr [rcx]
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], si
cmp dl, dl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rbx
add dl, 47
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
cmovno di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
