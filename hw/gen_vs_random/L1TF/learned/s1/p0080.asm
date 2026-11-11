.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
sbb bl, 120
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -24
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
lea ax, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
cmp al, al
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add cl, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
xor bl, -6
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -70
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
xor dl, sil
xor rsi, 32
lea ebx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
