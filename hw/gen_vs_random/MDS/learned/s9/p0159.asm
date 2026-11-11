.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test al, 127
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or sil, -78
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
or al, cl
btr esi, eax
test al, -81
test sil, dl
or al, dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
