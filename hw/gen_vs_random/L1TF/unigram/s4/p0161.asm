.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
add al, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
add al, -93 # instrumentation
xchg rbx, rax
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 76
add rax, rdx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 20
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 95
mov cx, 30
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
lea dx, qword ptr [rcx + rdi + 25]
mov sil, cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 94
mov cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
