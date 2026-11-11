.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
btr ax, 193
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
btc ecx, edx
and rsi, 68
and sil, sil
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
btr ax, di
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rbx
cmovno rdi, rcx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
bt ebx, edx
or ax, -11837
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
