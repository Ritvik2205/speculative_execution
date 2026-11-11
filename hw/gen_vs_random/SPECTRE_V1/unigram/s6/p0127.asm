.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc di, bx
sub dl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 51
add al, -53 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], 65
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 29
movsx rdi, ax
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
test sil, 13
adc bl, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc eax, -655457029
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
cmovnp ax, bx
lea di, qword ptr [rsi + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
