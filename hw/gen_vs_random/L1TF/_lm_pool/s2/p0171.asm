.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, dx
lea edi, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 35
xor al, 45
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
cmp ax, -14781
jmp .bb_0.2
.bb_0.2:
add bl, -113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 49
sub al, dl
add bl, dil
movsx rcx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
