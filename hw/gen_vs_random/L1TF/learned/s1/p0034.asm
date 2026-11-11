.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
and dl, al
cmovnp dx, dx
lea di, qword ptr [rsi + rax + 38960]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
cmovno ax, ax
setnbe cl
setnb cl
cmp bl, cl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
