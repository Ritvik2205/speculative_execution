.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
or al, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
bt rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
add al, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
lea dx, qword ptr [rbx + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add bl, al
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -16
mov al, -101
lea rax, qword ptr [rdx + rsi]
cmovl di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
