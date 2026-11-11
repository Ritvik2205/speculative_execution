.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, edx
setnp sil
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
add rdx, 64
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 1
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
mov dl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
btc rax, rbx
adc cl, al
lea rcx, qword ptr [rdx + rdx + 2]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 48
bts cx, 64
add sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
