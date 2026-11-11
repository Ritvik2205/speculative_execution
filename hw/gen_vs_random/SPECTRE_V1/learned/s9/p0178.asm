.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
neg rax
lea di, qword ptr [rsi + rbx + 67]
sub al, dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ecx, 49
xchg al, bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
lea rdi, qword ptr [rsi + rax + 71]
lea di, qword ptr [rax + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
