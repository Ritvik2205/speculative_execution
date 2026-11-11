.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
not esi
or dl, -18
xor dl, -68
and rdi, 61
cmovnb rdx, rdx
btc eax, 46
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
bts ebx, edx
or cl, al
cmovnz di, ax
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and si, 41
xor ecx, 83
btr rsi, 73
xor cx, dx
cmovnle rsi, rax
cmovz rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
