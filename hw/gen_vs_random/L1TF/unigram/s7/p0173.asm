.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
add ax, -10746
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
sub si, di
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
adc bl, sil
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
lea rax, qword ptr [rax + rbx]
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rax + rbx]
lea rbx, qword ptr [rax + rcx + 80]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 72
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
xchg rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
