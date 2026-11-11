.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
add bl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edi
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 12
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
xor rcx, 74
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
bt eax, edx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
bt eax, 78
xor sil, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
