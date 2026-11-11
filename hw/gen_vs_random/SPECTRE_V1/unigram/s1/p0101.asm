.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rdx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
movsx rsi, ax
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
bts si, 78
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
add al, 96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
cmovnbe ecx, edx
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
cmp dl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
