.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, bx
cmovbe si, ax
add bl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
xor bx, bx
and ebx, 46
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
cmovb rbx, rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp eax, -240917296
and dil, 98
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 51
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
mul al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
cmp dl, 71
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
