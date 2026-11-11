.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -518999763
and cl, bl
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
lea di, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 35
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test eax, ebx
sbb bl, dl
add bl, 7 # instrumentation
cmovnl edx, eax
and rdi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdi]
lea si, qword ptr [rax + rdi + 72]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
neg rax
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 94
btc rax, 75
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
