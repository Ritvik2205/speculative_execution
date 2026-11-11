.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
bts rdi, rcx
btr cx, si
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
not cl
or al, -22
and cl, al
jmp .bb_0.1
.bb_0.1:
bt eax, 28
or cl, -36
or dl, dl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
or cl, 119
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
