.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, dl
lea eax, qword ptr [rcx + rsi]
lea ax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 45
cmovnp rbx, rsi
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
bt ax, 83
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
mov bl, bl
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
