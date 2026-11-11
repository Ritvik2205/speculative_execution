.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 75
test dil, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
inc dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
or al, dl
and edi, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
