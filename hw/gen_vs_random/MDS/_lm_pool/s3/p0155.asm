.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
xor rsi, -117
xor cl, 24
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and al, al
test rbx, 49
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor dl, 34
or rsi, 44
and dl, -73
or al, 16
xor al, 99
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
