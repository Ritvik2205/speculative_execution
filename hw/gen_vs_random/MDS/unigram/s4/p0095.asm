.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 54
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
bt rax, rax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and bl, -2 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
xor bl, 2
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
btc si, 16
cmovnz ax, ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
test rbx, 14
xor bl, bl
and dil, 12
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
