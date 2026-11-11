.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edx, eax
sub al, -1
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
lea ecx, qword ptr [rsi + rsi + 57]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
or bl, 63
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
movsx edx, dil
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 82
sub bl, -6
add al, -14 # instrumentation
lea ax, qword ptr [rsi + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
