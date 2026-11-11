.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rsi], ax
cmp cl, dil
dec cl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
mov bl, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and eax, 933895314
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
neg dil
test bl, -8
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
or al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
