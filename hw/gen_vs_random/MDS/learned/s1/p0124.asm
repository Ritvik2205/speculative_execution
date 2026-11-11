.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
or edx, ebx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 46
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
xchg dl, dil
cmovs dx, ax
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
xor cl, dl
jmp .bb_0.1
.bb_0.1:
bt si, ax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 22
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
jmp .bb_0.2
.bb_0.2:
or al, -8
test al, 74
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 35
and dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
adc eax, 22
bt ebx, edx
or rax, rcx
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
