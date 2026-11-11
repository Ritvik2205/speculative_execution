.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
add sil, -68
and rdx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 53
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
sbb cl, 105
and cl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
not rdx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
or sil, 52
bts ebx, 28
add cl, -119 # instrumentation
adc dil, sil
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
