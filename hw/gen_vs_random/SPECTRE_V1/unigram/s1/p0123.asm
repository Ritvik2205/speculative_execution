.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, al
btr si, dx
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or sil, cl
setbe sil
or ax, di
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 18
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
cmovno ebx, edi
adc rdx, 35
and al, dl
sub ebx, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
