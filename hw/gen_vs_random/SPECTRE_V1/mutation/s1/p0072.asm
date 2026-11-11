.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 72 # instrumentation
cmovnl dx, bx
not bx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], -120
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx], -4
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and cl, 86
lea rcx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
adc bl, al
cdq
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
inc eax
jmp .bb_0.2
.bb_0.2:
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
cmp cl, al
adc bl, 102
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor rax, -1905683998
sbb dl, 127
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 36
or cl, dl
setnle bl
imul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
