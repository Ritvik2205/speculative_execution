.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test al, dil
btr ecx, esi
or ax, -7150
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and dx, 60
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
test rax, 1000448998
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
test ax, -31596
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor al, bl
xor al, 34
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
