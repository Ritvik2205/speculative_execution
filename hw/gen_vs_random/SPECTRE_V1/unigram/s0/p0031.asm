.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz sil
lea ax, qword ptr [rax + rbx]
test edi, 66
add dl, -73 # instrumentation
setnbe dl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and bl, 46
mov bl, bl
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
test ecx, -1134698714
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], -30
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
xchg ecx, edi
sub rsi, 121
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
