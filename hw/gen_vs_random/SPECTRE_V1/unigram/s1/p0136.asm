.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 63 # instrumentation
cmovl bx, si
mov cl, cl
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
lea bx, qword ptr [rdx + rdi + 1]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
xchg rcx, rsi
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add bl, -107 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
