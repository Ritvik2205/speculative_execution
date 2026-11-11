.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ax, cx
mul si
xor rsi, 75
test cx, -17886
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb cx, si
xor cl, -40
and rsi, 95
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rdx]
lea bx, qword ptr [rcx + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
add sil, -121 # instrumentation
setno sil
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
cmovbe dx, bx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
