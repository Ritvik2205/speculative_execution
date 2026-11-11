.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
or sil, -44
or al, cl
bts rcx, 38
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and al, dil
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
movsx eax, cl
cmovle rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
