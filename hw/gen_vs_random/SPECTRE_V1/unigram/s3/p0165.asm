.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
movsx dx, dil
lea ebx, qword ptr [rsi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
or dl, dl
bt di, 236
cmovle rcx, rdx
sbb al, sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
adc al, 23
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and dl, dl
add al, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
