.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
not sil
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 96
movsx rax, dx
add dil, -75
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 89
sbb cl, sil
add cx, -103
cdq
cmovnb rdx, rsi
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
movzx esi, dl
add al, -76 # instrumentation
adc al, 34
adc rbx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
