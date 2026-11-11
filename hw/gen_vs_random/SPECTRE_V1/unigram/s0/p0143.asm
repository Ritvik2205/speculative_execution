.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 49
cmovnle ax, di
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
sbb ebx, 81
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
or rdx, rcx
lea rsi, qword ptr [rdx + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
or rax, rax
add dl, 58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor al, dl
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
