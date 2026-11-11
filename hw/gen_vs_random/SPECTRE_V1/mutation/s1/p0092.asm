.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -32
adc bl, al
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
mul dl
dec dx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
adc bl, 102
adc dl, 107
movsx dx, al
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
seto dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
