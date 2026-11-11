.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
setnbe dil
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
add dl, 116 # instrumentation
cmovbe rdx, rdx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
cmovnp dx, di
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 20
xchg eax, ecx
add bl, -41 # instrumentation
xchg cl, bl
add rdx, 2
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
