.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
cmovl rdi, rbx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and bl, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and cl, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
jmp .bb_0.1
.bb_0.1:
cmovnbe cx, ax
bts cx, di
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 40
or si, 94
xor al, cl
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
cmovnz rbx, rcx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and sil, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
