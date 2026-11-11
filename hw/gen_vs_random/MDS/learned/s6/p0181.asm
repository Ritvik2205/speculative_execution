.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 27
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
xor al, -19
or dl, cl
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
test cl, -123
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
or al, -24
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
test cl, 101
or al, bl
or al, 37
and al, dil
test dl, -95
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
