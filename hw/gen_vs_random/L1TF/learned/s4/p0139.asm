.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 2
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
test eax, 645518295
cmp ax, -14781
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
jmp .bb_0.4
.bb_0.4:
cmp al, -119
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
