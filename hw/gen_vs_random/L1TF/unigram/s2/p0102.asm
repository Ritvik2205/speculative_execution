.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, bl
bswap rsi
btc ax, di
lea cx, qword ptr [rsi + rcx + 30]
setnb dl
add dl, 127 # instrumentation
setnbe cl
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
cmovnle ax, ax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
add sil, al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
cmovb rdi, rdx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
setnp cl
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
