.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
add sil, al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
or dl, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
setnp cl
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
add cl, 22 # instrumentation
cmovns rax, rdi
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
sub sil, -55
cmovnp cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
