.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 88
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
lea ecx, qword ptr [rbx + rcx + 33]
add dl, 121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
btc esi, esi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
