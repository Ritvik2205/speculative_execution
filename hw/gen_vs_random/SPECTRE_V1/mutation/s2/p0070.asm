.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
add dl, 40 # instrumentation
lea dx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovns rsi, rsi
xor rsi, -124
lea edi, qword ptr [rcx + rbx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
lea rdi, qword ptr [rax]
dec rdi
movzx bx, sil
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
mov bl, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
