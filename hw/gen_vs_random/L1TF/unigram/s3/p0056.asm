.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
cmovz rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 68
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 94
lea rdx, qword ptr [rdi]
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
movzx di, dil
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and sil, dl
cmovz rdx, rbx
or dl, 8
movzx rcx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
