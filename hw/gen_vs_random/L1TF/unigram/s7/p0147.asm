.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
add dl, -78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
sub bl, -96
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
adc dil, sil
lea rcx, qword ptr [rcx]
cmovl rsi, rbx
jmp .bb_0.1
.bb_0.1:
add dl, 126 # instrumentation
setnb dil
or cl, -78
test dl, 84
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
xchg sil, sil
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
