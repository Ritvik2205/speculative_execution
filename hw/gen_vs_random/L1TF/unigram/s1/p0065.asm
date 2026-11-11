.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
add dl, 82 # instrumentation
adc dl, bl
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
xor dl, dl
inc rdi
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 92
btc dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
mov ebx, 675401645
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
lea edi, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
add bl, 48 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
