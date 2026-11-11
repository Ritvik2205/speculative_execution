.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ax, bx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 64
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
and al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
xor bl, -61
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 22
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or esi, -110
or cx, 49
xor rax, rdx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 40
or di, 0b1000000000000000 # instrumentation
bsf cx, di
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
bts rbx, 25
cmovnp ax, si
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
