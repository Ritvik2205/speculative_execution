.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
movzx eax, si
sub dx, -23
or cl, al
bts di, 230
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sbb eax, 1392087754
lea dx, qword ptr [rdx + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
mov bl, al
jo .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and bl, 124
or eax, -1161451853
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
lea esi, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
