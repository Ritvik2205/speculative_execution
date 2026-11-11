.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
or al, dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test rdx, 94
or dl, al
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
not sil
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
