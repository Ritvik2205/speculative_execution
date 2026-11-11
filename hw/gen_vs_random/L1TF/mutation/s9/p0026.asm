.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -34
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
setz bl
xchg dil, dil
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
lea cx, qword ptr [rsi + rsi + 58262]
cmovnbe edx, edi
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
add cl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
xchg esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
