.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
add rax, 1633593912
or al, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
lea ax, qword ptr [rcx + rdi + 92]
and cl, cl
add ax, 116
or eax, edx
sub rdi, 65
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
