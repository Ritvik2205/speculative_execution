.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 78 # instrumentation
adc dx, 49
test rbx, 95
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
cmp sil, 25
setle dil
or cx, 86
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -111
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 84
test rax, rsi
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
add esi, 69
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 42
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
