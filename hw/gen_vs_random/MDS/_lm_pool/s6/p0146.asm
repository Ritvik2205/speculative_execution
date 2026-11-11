.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, bx
xor sil, -46
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 67
btc di, 164
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
xor sil, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
btc si, dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
test bl, cl
jmp .bb_0.3
.bb_0.3:
test al, -81
test eax, 424329527
bts ax, di
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
btc si, 99
test rbx, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
