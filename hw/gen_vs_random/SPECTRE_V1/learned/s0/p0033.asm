.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 28
cmp rcx, 76
cmp rax, 1189904463
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
add al, al
adc al, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
