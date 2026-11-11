.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, cl
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 61
lea ecx, qword ptr [rdi + rbx]
adc cl, -18
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
or dl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
or sil, al
cbw
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], 62
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
