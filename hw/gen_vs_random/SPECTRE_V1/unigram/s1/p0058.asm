.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
lea cx, qword ptr [rcx + rdx + 80]
imul rbx, rdx, 89
mul dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
add cl, -127
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdx
adc dil, 36
add cl, 112 # instrumentation
movzx esi, dl
xor ebx, eax
dec al
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
cmp bl, -114
xor rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
