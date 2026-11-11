.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
test eax, 6
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
xor cx, 41
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovno eax, esi
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
test sil, 112
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
cmovp esi, edx
lea rcx, qword ptr [rdi + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
mov sil, sil
xor rsi, 73
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
