.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
cmovb rbx, rsi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
bts cx, 14
test bl, dl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovle rcx, rcx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
cmovbe rcx, rcx
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rbx], bx
and dl, -127 # instrumentation
cmovno esi, ebx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
bts ecx, 3
cmovb bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
