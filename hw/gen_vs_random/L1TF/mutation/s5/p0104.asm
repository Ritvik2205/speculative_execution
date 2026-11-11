.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
setns al
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
lea rcx, qword ptr [rbx]
or dil, -113
btc di, bx
jmp .bb_0.1
.bb_0.1:
add cl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
sub dl, -49
setz bl
xchg esi, eax
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
cmovnbe edx, edi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
lea cx, qword ptr [rsi + rsi + 58262]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
xchg dil, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
