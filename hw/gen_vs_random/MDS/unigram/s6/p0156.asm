.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor al, 55
and al, 84
bt cx, ax
test dil, sil
xor al, bl
and bl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
or dil, -78
or cx, -42
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
cmovns edx, edx
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
btc rcx, rax
bts esi, 82
or cl, 30
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
