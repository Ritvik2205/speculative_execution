.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, al
adc cl, -19
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rbx]
imul ax, si, 123
add bl, -47 # instrumentation
setbe bl
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
setnp dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
bt ecx, ebx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
xchg al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
