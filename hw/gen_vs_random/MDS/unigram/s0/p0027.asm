.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 10
and rbx, rbx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
cmovle rax, rdx
cmovz eax, edx
or dx, 125
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
btc rbx, rdx
xor si, 80
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
cmovbe ebx, eax
xor dl, al
xor sil, 110
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
