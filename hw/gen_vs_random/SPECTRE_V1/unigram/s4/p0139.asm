.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 12
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
add al, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 92
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs ebx, esi
bt rdx, rbx
or cl, -62
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
xor al, sil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 98
setnle cl
or al, sil
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
