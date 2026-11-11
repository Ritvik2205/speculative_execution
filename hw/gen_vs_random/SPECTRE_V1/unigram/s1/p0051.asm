.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, di
adc sil, -18
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 89
cmovle rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
add cl, 56 # instrumentation
cmovns esi, ecx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
movsx rbx, di
add al, -54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 58
or di, 56
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
add bl, 112 # instrumentation
setnbe sil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
xchg ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
