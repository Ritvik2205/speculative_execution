.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and al, 67 # instrumentation
cmovl rax, rcx
cmovnbe rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
cmovnl cx, bx
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
xor ax, -4010
btr ax, ax
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 67
and dl, sil
or rax, rcx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
cmovnbe esi, ebx
btr esi, edx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
bt edi, ebx
and dil, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
