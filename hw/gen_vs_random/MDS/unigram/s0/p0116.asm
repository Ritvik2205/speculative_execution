.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and dl, -73
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
cmovbe ax, si
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
btr ebx, esi
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 70
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 69
cmovl dx, bx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
