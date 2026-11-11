.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
add bl, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
sbb dl, -23
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rcx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
imul ax, dx
add bl, 41 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
xor rcx, 64
add bl, 36 # instrumentation
setnl dl
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
adc dil, 79
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
add si, 97
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 50
xor rdx, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
