.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
inc rcx
add bl, 39 # instrumentation
cmovo ecx, edi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
cmovl rcx, rcx
add al, cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
test dl, -7
cmovl edi, eax
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
sbb di, -122
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
movzx ecx, cx
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
