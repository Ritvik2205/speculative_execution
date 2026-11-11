.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
adc bl, al
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
sub dil, -32
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
dec dx
adc bl, -73
mul dl
movsx dx, al
adc dl, -49
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
seto dl
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
