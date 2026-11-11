.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and ax, 25351
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
add bl, -95
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sbb dil, -106
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 0 # instrumentation
adc dl, bl
test rax, 1469613902
lea rdx, qword ptr [rcx + rdx + 44106]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or al, dl
and ecx, -38
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
