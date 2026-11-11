.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto bl
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
sub al, 63
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
sbb si, 62
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setns dl
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
and al, -54
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 89
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
sub bl, sil
mul si
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
