.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
lea eax, qword ptr [rbx + rdi]
cmovnp rdi, rax
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
add eax, 109
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
sub rcx, -90
add bl, dl
or rsi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
xor sil, dl
cmovl rax, rdx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 67
add cl, -40 # instrumentation
sbb rcx, 55
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
