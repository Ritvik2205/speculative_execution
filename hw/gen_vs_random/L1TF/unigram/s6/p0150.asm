.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
lea eax, qword ptr [rcx + rcx]
sub edi, edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
lea cx, qword ptr [rdi + rbx + 58]
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
lea si, qword ptr [rbx]
add al, -117 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edx
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
