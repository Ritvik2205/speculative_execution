.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
cmp cx, di
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 81
cmp bl, dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
cmovnle rbx, rbx
bswap rsi
btc ax, di
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rsi + rcx + 33]
setnb dl
add dl, 127 # instrumentation
setnbe cl
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
cmovnle ax, ax
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
add sil, al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
