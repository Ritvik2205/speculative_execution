.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or bl, al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor sil, 94
and al, cl
and dx, 3
test al, sil
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and eax, 943733866
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
