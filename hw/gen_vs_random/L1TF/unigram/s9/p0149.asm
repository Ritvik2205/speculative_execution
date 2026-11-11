.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
add rdi, 13
cmp al, cl
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
lea edx, qword ptr [rdi + rax]
and al, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
mov al, al
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 57
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
add bl, 68
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
