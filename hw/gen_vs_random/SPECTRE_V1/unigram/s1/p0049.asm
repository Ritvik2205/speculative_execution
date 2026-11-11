.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
lea di, qword ptr [rdi]
sbb di, -122
mul al
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, bl
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 39
and dl, dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
lea rbx, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], edx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
