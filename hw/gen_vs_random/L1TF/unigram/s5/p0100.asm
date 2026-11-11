.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
sbb al, 61
cmp dl, -93
adc dl, dl
cmovle rcx, rdi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 87
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 49
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
cwde
cmovns rdx, rdi
sub bl, 15
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 74
add dl, 125 # instrumentation
cmovbe rbx, rbx
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
