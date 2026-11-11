.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
adc bl, -14
cmp eax, -234754587
and eax, ebx
and al, -68
test ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
sub dil, 87
sub al, cl
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
sub rcx, -90
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
lea di, qword ptr [rcx + rdx]
setz bl
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
