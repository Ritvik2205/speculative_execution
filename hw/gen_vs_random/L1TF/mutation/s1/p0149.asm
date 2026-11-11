.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xchg dil, dil
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
setz bl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
cmovnbe edx, edi
xchg esi, eax
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
sub dl, -34
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
lea cx, qword ptr [rsi + rsi + 58262]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
add cl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
