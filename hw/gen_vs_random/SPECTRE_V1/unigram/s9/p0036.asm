.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
add eax, 1518653812
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 40
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 80
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 26
neg bl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
adc dl, 80
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 34
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
movsx esi, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
