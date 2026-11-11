.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
xor cl, 89
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
cmp al, al
sub cl, -49
add cl, dil
mul rax
cmovns rax, rcx
sub dl, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
cmovnle bx, bx
xor rdx, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
