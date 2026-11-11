.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, 760523556
lea dx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 40
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 41
lea bx, qword ptr [rbx + rax + 21]
cwd
movzx eax, cl
or di, 88
setnle bl
cmovnb rsi, rax
adc edi, 122
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], cx
lea rsi, qword ptr [rcx + rdx + 43]
add cl, -103 # instrumentation
cmovnl rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
