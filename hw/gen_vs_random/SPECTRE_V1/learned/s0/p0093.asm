.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
or di, cx
lea esi, qword ptr [rcx + rdx + 46]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
xchg cx, di
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 66
xor al, dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
lea rsi, qword ptr [rdi + rdi + 14128]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
lea edi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
