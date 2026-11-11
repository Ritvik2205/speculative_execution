.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
or bl, 13
and ax, -16061
btr edx, 197
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
cmovl rax, rax
cmovbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 59
cmovl esi, ecx
cmovl rbx, rcx
xor cx, -18
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
cmovno rbx, rcx
and bl, 15 # instrumentation
cmovb bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
