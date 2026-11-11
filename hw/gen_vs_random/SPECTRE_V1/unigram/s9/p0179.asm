.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, dl
imul al
add dl, bl
or dx, cx
mov ax, 39
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
bts rbx, 52
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
inc sil
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 55
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
add cl, 40 # instrumentation
btc rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
