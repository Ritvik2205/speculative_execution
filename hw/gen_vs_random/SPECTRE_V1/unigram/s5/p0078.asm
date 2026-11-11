.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -93 # instrumentation
setnb dl
add al, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rdi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdi]
cmp rax, rbx
lea edi, qword ptr [rbx + rbx]
add dl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 81
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
lea rbx, qword ptr [rbx]
lea rcx, qword ptr [rsi + rbx]
add bl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
movzx eax, di
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
lea rax, qword ptr [rsi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
