.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rcx]
xchg al, dl
cmovbe edi, eax
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or rsi, -14
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
setnz bl
add al, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
