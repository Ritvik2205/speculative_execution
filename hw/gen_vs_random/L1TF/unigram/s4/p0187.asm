.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, 86
cmovl edi, edx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
adc rdi, 127
or cl, al
lea eax, qword ptr [rdx + rdi]
cmovnbe bx, di
add sil, sil
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
sbb sil, dil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
and eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
