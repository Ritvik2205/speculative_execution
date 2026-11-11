.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edx, eax
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
dec eax
and rcx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
sub rdi, 57
test rdi, rsi
cmovb di, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
cmovb ax, cx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 89
cmovnl rdx, rdi
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
btc edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
