.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
add al, bl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
mov sil, dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
test al, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
