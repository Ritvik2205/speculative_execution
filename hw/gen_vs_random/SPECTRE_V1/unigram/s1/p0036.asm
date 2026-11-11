.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 36 # instrumentation
setnl dil
adc sil, -115
movsx rax, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
test dl, 28
add dil, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 54
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
