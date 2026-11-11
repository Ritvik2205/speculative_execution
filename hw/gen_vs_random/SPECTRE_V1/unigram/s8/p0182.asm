.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
add cl, 88 # instrumentation
sbb cl, 86
adc dil, 25
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setnb sil
adc si, di
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
test rdi, -1846965753
mov bl, -31
add bl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], sil
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
