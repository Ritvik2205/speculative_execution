.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
setnb cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
sub cx, 37
btr ax, 89
and rax, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rax]
add bl, -76 # instrumentation
cmovnle si, dx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
dec bl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
