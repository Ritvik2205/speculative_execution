.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
or dl, cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor bl, cl
and sil, -56
or dl, -89
test al, sil
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
xor al, cl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
