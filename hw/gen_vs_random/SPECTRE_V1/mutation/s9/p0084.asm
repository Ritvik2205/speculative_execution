.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
add eax, -1174744897
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
or sil, 34
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
test al, 59
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
test rdi, -1846965753
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
add al, -94 # instrumentation
cmovnle rcx, rsi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
