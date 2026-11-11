.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovno dx, dx
add al, -9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
adc eax, 551972257
add cl, 19
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
add cl, 32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
add cl, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], si
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
