.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
cmp edi, 66
inc al
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmp rdi, 10
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
mov cl, dl
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
xor dl, dil
lea rcx, qword ptr [rbx + rcx]
sub dl, al
lea esi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
