.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
not al
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
sub dl, 41
add al, -80
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 9
jmp .bb_0.4
.bb_0.4:
bswap rdx
test esi, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
