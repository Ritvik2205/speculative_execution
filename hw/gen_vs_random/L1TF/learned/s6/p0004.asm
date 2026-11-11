.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
setb cl
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and al, -68
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 72
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rcx, rbx
test al, -32
adc al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
