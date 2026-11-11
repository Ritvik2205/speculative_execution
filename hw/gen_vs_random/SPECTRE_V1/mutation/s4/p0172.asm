.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
add eax, -1174744897
js .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -99
or sil, 52
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
test rdi, -1846965753
add al, -94 # instrumentation
cmovnle rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
