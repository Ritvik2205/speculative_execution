.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
cmovp ebx, ecx
jmp .bb_0.1
.bb_0.1:
xor di, bx
test bx, 71
sub sil, 86
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 91
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and si, bx
or rax, -285849275
xor al, 77
cmovp cx, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
xor al, dl
and al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
