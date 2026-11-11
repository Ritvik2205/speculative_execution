.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -115 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
test dl, bl
cmovnl eax, ebx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and al, 126
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
test eax, 758789512
and cl, -109 # instrumentation
not rdx
and dil, cl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
or dl, -115
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 74
or rdx, 5
xor dl, -68
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and cl, dl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 23
and cl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
