.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 60
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 67
or dl, dl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 41
add ecx, 21
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
add cl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 36
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
adc bl, 27
sub sil, dil
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 46
and dx, 70
xchg al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
