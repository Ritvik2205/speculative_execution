.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 44
lea rdi, qword ptr [rdx + rax]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
lea rsi, qword ptr [rsi]
xchg bx, ax
add di, 82
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
setbe cl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add sil, 126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
lea eax, qword ptr [rdx + rbx]
cmp al, sil
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 53
btc edx, edx
adc al, dl
setz dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
