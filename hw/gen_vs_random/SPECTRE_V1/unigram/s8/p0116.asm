.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
sbb bl, al
lea di, qword ptr [rbx + rdi + 20]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
imul eax
cmovnbe rax, rdi
xor esi, 106
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
setle al
setnb sil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc dx, 18
test dil, -116
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
