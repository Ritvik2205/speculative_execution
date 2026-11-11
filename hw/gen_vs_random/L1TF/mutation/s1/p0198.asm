.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rbx
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
add al, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
cmovl di, di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
mov al, -101
add bl, al
lea dx, qword ptr [rbx + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
bt rcx, rsi
or al, bl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -16
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
lea rax, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
