.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns edx, ebx
btr ecx, ecx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
or sil, cl
and dl, -72 # instrumentation
not dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
or cl, dil
test rax, -2004802425
btc eax, 40
cmovbe eax, ebx
cmovno rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
bt ebx, eax
bts eax, 222
bt rbx, rax
cmovnbe rcx, rbx
and dl, 84 # instrumentation
cmovl rdi, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
or rdx, -109
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
