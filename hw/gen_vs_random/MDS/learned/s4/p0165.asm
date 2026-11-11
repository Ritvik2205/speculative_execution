.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, 1749358813
btc rbx, rax
xor al, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
bts cx, di
bt ebx, edx
and sil, -94
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
xor al, -15
cmovbe ax, dx
cmovns eax, eax
not rbx
xor eax, 73
test rdx, -1624442902
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
