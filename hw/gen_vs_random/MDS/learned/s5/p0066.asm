.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and dl, -73
test al, -81
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or cl, dl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 65
and cl, -71
or eax, edx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
or al, dl
or al, -61
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor rax, -1657511731
test si, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
