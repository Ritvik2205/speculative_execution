.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
xchg dx, dx
lea ebx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
add cl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
xor al, dil
mov bl, 35
sbb dl, dil
add al, -34 # instrumentation
setnp sil
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
adc al, 70
btr di, 14
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
