.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cl
mov al, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
dec rdi
add sil, -26 # instrumentation
adc edx, esi
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], 85
movsx rcx, dil
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
add al, -27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 85
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
lea si, qword ptr [rsi + rdx]
cmovl rcx, rax
add dl, 6 # instrumentation
adc rbx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
