.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
add cl, 89 # instrumentation
adc sil, al
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
mov cl, 12
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 39
cmp dl, sil
test rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
test rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
