.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
sub dl, 105
inc dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xor cl, al
and bl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
cmp al, 27
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 77
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
