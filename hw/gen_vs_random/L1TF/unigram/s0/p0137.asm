.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -40 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
cmovno rax, rdx
lea dx, qword ptr [rsi + rax]
cmovl rsi, rsi
movzx cx, dil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
sbb sil, -79
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
lea si, qword ptr [rax + rsi + 54]
mov dil, cl
add dl, 121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
add sil, 21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
