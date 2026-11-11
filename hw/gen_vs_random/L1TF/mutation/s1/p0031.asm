.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and ebx, -52
sub edi, ebx
setz al
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
add dl, 27 # instrumentation
setnle dl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
cmovo edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
xor eax, -603819833
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
cmovnz di, cx
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
