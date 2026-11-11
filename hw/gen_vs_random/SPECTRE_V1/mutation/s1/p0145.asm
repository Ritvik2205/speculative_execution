.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
imul eax, esi
cmovno rdx, rbx
sbb al, 104
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -94 # instrumentation
cmovnle rcx, rsi
or sil, 52
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
test al, 40
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
test rdi, -1846965753
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
