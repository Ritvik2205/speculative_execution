.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and cl, -71
or al, cl
btc ecx, 76
or rax, -1561934807
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and dil, 125
xor cl, bl
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor al, 9
or al, -22
bt di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
