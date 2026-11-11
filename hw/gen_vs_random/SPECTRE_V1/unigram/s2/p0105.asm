.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 95
add bl, 31
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 3
adc si, -95
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 57
add al, 32 # instrumentation
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 94
adc sil, bl
xor sil, bl
add dl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
