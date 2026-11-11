.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdi
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add cl, 0 # instrumentation
adc cl, bl
test bx, 71
mov cl, -72
add dl, -83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
neg al
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
lea di, qword ptr [rdi + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 92
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
