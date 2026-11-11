.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb bx, ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
add al, -34 # instrumentation
setnp al
lea edx, qword ptr [rax + rdx + 21]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
setnb bl
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -89
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
cmovnp rax, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 48
test edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
or cl, bl
add dl, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
