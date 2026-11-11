.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
setl dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
add bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
sbb cl, bl
or rcx, rdi
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
