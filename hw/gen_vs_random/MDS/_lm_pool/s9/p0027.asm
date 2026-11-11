.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
or bl, -62
test eax, 1838539683
btr dx, cx
or al, sil
or al, sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
test sil, -55
jmp .bb_0.2
.bb_0.2:
or al, sil
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
