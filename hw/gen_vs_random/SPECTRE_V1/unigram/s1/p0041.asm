.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
not cl
movsx ecx, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], edx
add rdx, 95
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
setb dil
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
setnb bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
add bl, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
