.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
sub al, dl
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
btc ax, cx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
sub rax, 57846954
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
