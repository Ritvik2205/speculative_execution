.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -23 # instrumentation
cmovl bx, dx
sub bl, -19
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
add al, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
or dl, sil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
add bl, -95
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rbx]
xor cl, 78
bt ecx, edi
adc bl, sil
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
xor edi, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
