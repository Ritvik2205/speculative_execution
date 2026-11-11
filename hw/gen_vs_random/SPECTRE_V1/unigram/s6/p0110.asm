.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 91
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
adc ax, 24404
bt rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 77
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
add al, 22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -23 # instrumentation
setnle al
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
setz bl
or rdi, 68
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
cmp dx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
