.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 32579
and rsi, 98
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
setbe dl
test dl, cl
setnb cl
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
xor al, bl
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
test bl, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -9758
adc dl, cl
not rcx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
