.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or cl, al
test rsi, 879594088
or ax, 19243
cmovl rcx, rax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and al, dl
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
cmovp ax, di
cmovo ebx, edi
sub rax, 38
test dl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 21
cmp cl, 31
cmovns edi, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and bl, al
and al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
