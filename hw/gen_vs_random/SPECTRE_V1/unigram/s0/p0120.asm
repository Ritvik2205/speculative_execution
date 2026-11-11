.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
cwde
lea rdi, qword ptr [rcx]
mov eax, esi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
movsx di, dil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 42
btr rdi, rdx
sbb sil, cl
sub rsi, 121
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add bl, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
