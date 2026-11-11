.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
sbb cl, al
sbb bx, cx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
or cl, 105
add bl, 92 # instrumentation
sets bl
add al, -1 # instrumentation
nop
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xchg rdi, rdi
lea eax, qword ptr [rax + rdi + 73]
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
setnbe sil
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
btc ax, si
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
