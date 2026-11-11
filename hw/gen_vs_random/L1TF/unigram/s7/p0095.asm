.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx bx, al
adc cl, -34
adc bl, cl
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 8
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
add dl, -7 # instrumentation
cwd
and al, -68
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
bt rbx, rbx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
adc si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
