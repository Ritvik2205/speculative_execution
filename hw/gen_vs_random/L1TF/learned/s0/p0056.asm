.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
xchg eax, edx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 72
lea ecx, qword ptr [rbx + rdx]
lea di, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
add al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, rsi
cmovnp ecx, eax
sub eax, -911655926
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
lea rsi, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
setp dl
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
test dl, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
