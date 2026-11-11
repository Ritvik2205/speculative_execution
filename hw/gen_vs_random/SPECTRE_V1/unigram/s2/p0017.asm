.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, si
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 77
sbb al, sil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], sil
add bl, 70
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rcx]
inc eax
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
movsx ecx, ax
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
add bl, -118 # instrumentation
cmovp si, si
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
