.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
xchg al, dl
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
and ecx, eax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
sbb dil, bl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
sub sil, -87
inc ebx
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
add cl, -103 # instrumentation
cmovnl rcx, rdx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
lea di, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
