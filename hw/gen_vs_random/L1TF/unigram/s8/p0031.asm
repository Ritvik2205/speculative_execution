.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, -11
add dl, -1
lea esi, qword ptr [rdi]
imul rbx
lea ecx, qword ptr [rbx + rdx]
xchg rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
sub dl, 105
xor di, 92
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
