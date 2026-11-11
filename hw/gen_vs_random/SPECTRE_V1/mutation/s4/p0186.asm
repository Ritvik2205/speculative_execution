.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rbx, si
or esi, -74
setnp dl
mov cl, al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add cl, -93 # instrumentation
not rdx
lea cx, qword ptr [rax + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
sbb al, -14
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xchg bl, al
lea rsi, qword ptr [rdx + rcx + 57579]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
xor al, -119
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
add bl, -43 # instrumentation
adc si, -23
cmovle edi, ecx
cmovle rcx, rbx
or dl, sil
adc eax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
