.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
test dil, 18
test dl, al
xor rax, 1636804787
sub al, 10
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
lea rbx, qword ptr [rbx + rcx + 82]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
cmp dil, bl
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
bt dx, 58
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
