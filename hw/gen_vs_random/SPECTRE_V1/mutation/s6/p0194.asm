.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rbx]
adc cl, -81
add bl, -47 # instrumentation
setbe bl
and bl, al
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
imul ax, si, 123
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
bt ecx, ebx
xchg al, cl
setnp dl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
