.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
add al, -84 # instrumentation
setno al
inc dil
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
add dil, -49 # instrumentation
adc dil, sil
or cl, dil
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 60
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
btc bx, si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
test bx, dx
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
