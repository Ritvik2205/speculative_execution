.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
dec ebx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
xchg rsi, rax
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
sbb rcx, rdi
sub esi, -89
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
add ecx, 88
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 97
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
