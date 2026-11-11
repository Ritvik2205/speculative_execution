.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 81
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rax, rbx
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea eax, qword ptr [rbx]
and rcx, -29
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
add cl, 78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
lea di, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
btc edx, 169
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
