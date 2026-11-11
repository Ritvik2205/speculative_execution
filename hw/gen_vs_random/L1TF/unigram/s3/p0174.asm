.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
lea edi, qword ptr [rax + rax + 26]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 55
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], di
jmp .bb_0.1
.bb_0.1:
sub edi, 27
lea di, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and bl, bl
imul rbx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
