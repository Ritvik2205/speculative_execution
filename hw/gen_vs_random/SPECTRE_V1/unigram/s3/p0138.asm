.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
add cl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ebx
lea rax, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
btc edi, 59
xor rsi, 73
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 97 # instrumentation
adc bx, cx
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rax]
cmovo esi, esi
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 61
bt ecx, edx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
