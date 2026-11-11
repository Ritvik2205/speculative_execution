.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
or ebx, -104
xor rax, -1128378406
and cl, bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and bl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or dil, -76
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
or al, dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or al, dl
or dl, -97
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test ax, 4430
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
