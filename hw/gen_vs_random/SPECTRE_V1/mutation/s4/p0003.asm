.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
not ecx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
add bl, -95 # instrumentation
lea bx, qword ptr [rdx + rdx + 34528]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
add rax, -845342150
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
inc esi
xor dl, al
or rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
