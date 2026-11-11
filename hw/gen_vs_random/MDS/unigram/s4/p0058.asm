.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and al, 39 # instrumentation
cmovbe dx, ax
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
bt bx, di
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
btr rax, 209
or rdi, 21
or edi, -88
test sil, 17
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
cmovnz bx, ax
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
test rax, 1949278494
and dil, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
or cl, al
or rbx, -72
and cl, -127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
