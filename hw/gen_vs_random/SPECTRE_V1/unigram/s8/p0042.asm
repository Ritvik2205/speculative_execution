.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
lea eax, qword ptr [rax + rdx + 25]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
add cl, 112 # instrumentation
sbb ecx, 32
add bl, 9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 57
add dl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
lea rdx, qword ptr [rdi + rax + 38]
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
