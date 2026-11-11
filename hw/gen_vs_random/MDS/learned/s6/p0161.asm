.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
bts rbx, rax
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and cl, -19
or bl, dl
xor cl, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and sil, cl
and ax, 339
btc dx, 146
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or al, -17
and dl, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
