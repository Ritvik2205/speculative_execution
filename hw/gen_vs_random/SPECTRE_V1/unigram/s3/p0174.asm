.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rdi + rax + 18]
mul rbx
seto al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
cmovb eax, ecx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -91
add dil, -101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovns rbx, rdx
cmovns rax, rsi
mov rsi, rcx
sub si, 32
dec sil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, -273199823
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
