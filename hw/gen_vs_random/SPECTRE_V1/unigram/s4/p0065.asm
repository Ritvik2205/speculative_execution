.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz al
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
lea ax, qword ptr [rsi + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
cmovp di, dx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 83
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
cmovns rdx, rdi
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 76
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 25
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
