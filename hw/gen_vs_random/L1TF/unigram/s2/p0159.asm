.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rcx, rdi
lea si, qword ptr [rdx]
neg edx
xchg al, sil
add dl, -48 # instrumentation
lea ebx, qword ptr [rbx + rdx]
cmovns edi, edi
btc bx, dx
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
test eax, 1730342416
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
add dl, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
cmovb edi, ebx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
xchg rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
