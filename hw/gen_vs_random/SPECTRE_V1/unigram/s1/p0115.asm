.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 84
add al, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
movsx rdi, ax
test dx, bx
test dil, -116
cmovs rsi, rdx
add rax, -845342150
add al, 110 # instrumentation
add bl, -22 # instrumentation
cmovnz ebx, ebx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, dl
or dil, bl
or rcx, rcx
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
xor rdx, 35
lea esi, qword ptr [rdi + rbx + 26]
btc esi, 6
test rax, 1469613902
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
