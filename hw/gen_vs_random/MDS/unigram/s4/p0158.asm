.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
btr rax, 10
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 67
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 65
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 68
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 26
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
bts rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
