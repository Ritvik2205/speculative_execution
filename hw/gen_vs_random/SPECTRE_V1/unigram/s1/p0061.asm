.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
sbb bl, sil
add al, -76 # instrumentation
adc dl, 32
movsx rax, cx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 65
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 57
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
