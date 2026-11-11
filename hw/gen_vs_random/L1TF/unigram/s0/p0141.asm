.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, -866236703
sbb cl, 83
sub bl, 55
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
movzx dx, bl
bts ax, 80
mov rax, -6437636498926413678
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
add al, -15 # instrumentation
cmovl rax, rdx
sub dil, 95
lea rsi, qword ptr [rbx + rdi]
sub cx, 58
add dl, 109 # instrumentation
sbb dl, 47
add dl, 84 # instrumentation
btc dx, dx
cmp sil, -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
