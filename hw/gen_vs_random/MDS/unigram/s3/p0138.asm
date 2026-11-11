.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, -12
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
and al, 21 # instrumentation
cmovb di, ax
cmovs edx, ecx
and bl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or ax, -6817
and ax, 31082
btc rdx, rdi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 19
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
btc rsi, rsi
btr edx, 255
or di, bx
and dl, 49 # instrumentation
cmovp rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
