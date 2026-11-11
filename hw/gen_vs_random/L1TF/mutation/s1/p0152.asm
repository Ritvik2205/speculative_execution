.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edx, edi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
lea cx, qword ptr [rsi + rsi + 58262]
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 105
xchg dil, dil
sub dl, -78
setz bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xchg esi, eax
add cl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
