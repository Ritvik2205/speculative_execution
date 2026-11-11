.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
adc rbx, 92
xor bl, 95
cmovnbe rax, rdi
add al, -125 # instrumentation
cmovb edi, ecx
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
movzx eax, dl
adc dl, 68
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
add cl, -109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 13
cmovnbe rdi, rdx
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 642565565
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
