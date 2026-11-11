.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
and rdi, 91
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
test bl, -114
xor bx, 69
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 98
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
cmovs rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 64
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
cmovb cx, si
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
