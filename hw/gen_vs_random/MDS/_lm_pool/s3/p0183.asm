.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 59
test sil, -55
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor dil, -70
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
xor dl, dil
xor sil, -46
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
not al
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rax, 452940266
bt bx, di
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
