.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and dx, 48
xor dil, -42
add dl, 126 # instrumentation
setnb bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and bl, dl
cmp cx, 70
lea rax, qword ptr [rbx + rax + 27]
sets dil
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 45
lea rsi, qword ptr [rdx + rdi + 16]
xchg cx, cx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
