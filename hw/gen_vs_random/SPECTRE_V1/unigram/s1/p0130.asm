.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
add al, -72
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
bts rax, rsi
neg rsi
add al, dil
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
adc bl, 88
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
sub dx, -23
lea edi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
cmp al, dil
lea rdi, qword ptr [rcx + rbx + 19444]
sub rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
