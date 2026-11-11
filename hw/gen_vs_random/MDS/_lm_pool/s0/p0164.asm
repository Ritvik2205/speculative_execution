.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, cx
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and sil, -69
and eax, 454700988
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 10
or cl, al
test al, 66
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
test si, ax
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
jmp .bb_0.1
.bb_0.1:
xor ax, -4010
test al, dl
xor dl, dl
test sil, cl
or cl, bl
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
