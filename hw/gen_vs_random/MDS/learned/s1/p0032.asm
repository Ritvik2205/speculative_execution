.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
xor rdi, -9
bts rdi, rax
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or cl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or bl, -62
or sil, dl
bt ax, bx
test dil, bl
and al, -103
and dil, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
