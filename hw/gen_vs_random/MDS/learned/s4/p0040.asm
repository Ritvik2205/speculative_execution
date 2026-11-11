.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
jmp .bb_0.1
.bb_0.1:
test al, -81
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or dl, sil
xor dl, 34
btr rbx, 155
not al
or sil, dl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
test rdi, 97
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
