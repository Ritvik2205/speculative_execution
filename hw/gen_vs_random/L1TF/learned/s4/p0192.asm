.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
sbb dl, cl
xchg ecx, eax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
btc dx, si
jmp .bb_0.1
.bb_0.1:
add dx, si
test al, 56
and al, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
lea di, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
