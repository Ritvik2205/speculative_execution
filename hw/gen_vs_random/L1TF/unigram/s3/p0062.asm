.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
add dl, -5 # instrumentation
adc bl, dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
lea rsi, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
inc rbx
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
cmovo rdx, rax
or di, dx
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
sbb bl, dl
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and cx, -79
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
