.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
cmovnp di, bx
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 70
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xchg rcx, rdx
setl bl
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
sub al, sil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 34
bts esi, 241
inc esi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
movsx edi, bx
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
