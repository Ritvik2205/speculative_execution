.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz eax, esi
add bl, -53 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
or esi, edi
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
cmp rdx, rdx
sbb rsi, 31
xor dl, al
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 54
btr edi, eax
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], 66
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
