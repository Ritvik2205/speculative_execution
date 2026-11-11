.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, 127
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
inc sil
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edi
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 36
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
lea cx, qword ptr [rax + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle eax, ecx
lea cx, qword ptr [rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
