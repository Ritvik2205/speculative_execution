.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
sub dil, -32
adc bl, al
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
adc dl, 80
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
dec dx
seto dl
movsx dx, al
mul dl
adc bl, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
