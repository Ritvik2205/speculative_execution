.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
xor ecx, 8
xor al, cl
test eax, 424329527
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
jmp .bb_0.1
.bb_0.1:
and dl, dl
xor rsi, -117
bt ax, si
test sil, -55
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test eax, 298249463
jmp .bb_0.2
.bb_0.2:
and ebx, 72
not dil
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
