.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
neg ebx
movzx esi, sil
and cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
add cl, -127
setl sil
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
mul al
add bl, -23 # instrumentation
setnle sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
test ax, dx
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
xchg ebx, edx
lea ebx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
add al, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
or al, 100
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
lea dx, qword ptr [rsi + rdi]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
add dl, cl
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
