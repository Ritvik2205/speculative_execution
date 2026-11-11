.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rsi]
sbb ecx, 96
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
add cl, cl
imul cl
btr di, 70
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ecx
sub dil, -111
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
bts si, 35
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
