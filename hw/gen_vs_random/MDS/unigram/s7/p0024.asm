.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -85
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
or sil, -78
cmovno rsi, rcx
cmovle si, bx
btc ebx, esi
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
test sil, bl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 74
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 100
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
xor rdi, rdx
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
or si, 0b1000000000000000 # instrumentation
bsf si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
