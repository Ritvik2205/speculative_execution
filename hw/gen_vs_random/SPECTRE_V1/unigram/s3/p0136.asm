.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
adc dl, dl
lea ecx, qword ptr [rdx + rbx + 19]
cmovnb cx, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xchg eax, ebx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 66
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setnp bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
xor sil, 1
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
add dl, 6 # instrumentation
adc rdi, 60
bts rcx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
