.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 15
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
test ebx, eax
and dil, -82
btr ebx, 5
inc edx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 90
xor dil, -42
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
bts rdx, rdi
lea ebx, qword ptr [rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
add bl, 30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
