.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
cmovno rax, rbx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 62
setb al
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
cmovnle bx, si
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 71
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
