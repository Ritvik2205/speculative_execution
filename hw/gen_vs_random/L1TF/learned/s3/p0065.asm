.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 82
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
or dl, cl
cmp ax, -79
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
add cl, 19
adc rbx, 75
movzx ecx, dil
jmp .bb_0.2
.bb_0.2:
and cl, 85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rcx]
lea rsi, qword ptr [rcx + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
