.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
xor al, -4
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
xor rcx, -2
or dl, sil
not al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or edx, -1
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
test al, sil
or dl, bl
test al, -81
test al, sil
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
