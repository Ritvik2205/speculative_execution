.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and si, -74
and sil, al
dec al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
cmovnp rax, rdi
sbb dil, 80
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
test edi, 2142010790
or sil, bl
mov al, dl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
sbb dil, bl
and cl, al
test cl, 78
sub cl, dil
and dil, -61
dec cl
sub rdx, 76
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and bl, -30
sbb cl, bl
adc cl, -54
and dil, -23
add dil, al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
adc al, 43
xor ax, 30500
or ax, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
