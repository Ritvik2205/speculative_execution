.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
bt si, 239
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
xchg rsi, rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
neg rcx
movzx ecx, dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
bts di, 230
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
sub bl, cl
cmovnl edi, esi
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
test al, bl
sub ax, -17837
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
