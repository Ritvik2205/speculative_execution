.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
or cl, bl
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 59
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
add cl, -23 # instrumentation
cmovl bx, ax
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
lea esi, qword ptr [rsi + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
