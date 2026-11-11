.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or ax, 30524
and dx, 3
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
not al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dil, -70
test eax, -409834435
and al, 82
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
btc di, 233
xor rdi, -9
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
