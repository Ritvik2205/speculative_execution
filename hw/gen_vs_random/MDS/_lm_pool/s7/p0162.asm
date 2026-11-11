.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 127
or al, 74
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
xor al, 122
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 86
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
xor bl, 67
and sil, 89
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
