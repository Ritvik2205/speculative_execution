.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 25
and sil, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
btc cx, dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and si, -121
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
bt ax, 76
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
btr ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
xor bl, -88
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
btr ax, 193
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
