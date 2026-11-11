.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
mov bl, 35
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and al, -68
inc eax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 73
sbb sil, al
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 45
lea ax, qword ptr [rax + rdi + 98]
sbb rax, 62
sub si, di
sub dl, 105
imul rbx
cmp esi, 110
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
