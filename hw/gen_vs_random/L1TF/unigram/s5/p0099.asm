.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ecx, -1856082135
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
sub esi, esi
and dx, cx
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
add bl, -9 # instrumentation
cmovs si, dx
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
sub sil, cl
jmp .bb_0.1
.bb_0.1:
bt eax, 51
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
bts edi, 79
movzx ebx, di
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
or rbx, 18
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
