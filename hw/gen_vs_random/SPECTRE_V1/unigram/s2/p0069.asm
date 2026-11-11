.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
add esi, 17
sets sil
movsx rdx, cx
add bx, ax
adc dil, 55
jno .bb_0.1
jmp .exit_0
.bb_0.1:
setb dil
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
lea rcx, qword ptr [rdx]
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 7
cmovs rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
