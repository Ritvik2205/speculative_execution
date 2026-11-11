.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
lea di, qword ptr [rbx]
adc dl, 17
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 57
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
cmovnp eax, ebx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 17
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 96
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xor dil, 2
add cl, 95 # instrumentation
mov cl, sil
add cl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
