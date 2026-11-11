.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
and esi, 91
xor sil, cl
or cl, 39
xor al, dl
and dl, -73
or sil, -78
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
test al, dil
or al, -61
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
