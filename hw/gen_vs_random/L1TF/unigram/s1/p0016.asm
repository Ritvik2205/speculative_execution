.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
sbb cl, -11
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
seto sil
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdi]
cmovo rbx, rdx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
