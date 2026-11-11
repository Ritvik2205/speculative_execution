.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rbx + rdx + 23]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rbx
lea ebx, qword ptr [rax + rsi + 69]
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
lea rcx, qword ptr [rcx + rbx + 62]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
cmovo edi, eax
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
setnp bl
sub di, 50
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 92
cmovb bx, dx
lea rdx, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
