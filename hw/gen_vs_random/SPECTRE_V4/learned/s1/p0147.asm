.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
cmovz ecx, esi
add dl, -8
and dl, dil
cmovno rax, rcx
adc dl, 16
btc edi, 125
xor al, 57
mov cl, bl
xor bx, -65
adc dil, bl
add dl, bl
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
