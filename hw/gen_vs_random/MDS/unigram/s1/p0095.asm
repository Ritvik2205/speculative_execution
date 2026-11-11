.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and ebx, 8
or bl, 127
cmovle eax, edi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
test bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
or dil, -76
not rdx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
xor di, -83
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and al, dil
btc rdx, rsi
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
cmovo rdi, rdx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
