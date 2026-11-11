.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test al, 66
or sil, cl
or bl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and bl, dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
btc di, si
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
or al, bl
and sil, dl
or sil, dil
and ebx, 63
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
