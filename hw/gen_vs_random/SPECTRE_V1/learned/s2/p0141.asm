.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
mov cl, dl
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
test al, 84
add cl, sil
cmp al, dl
jmp .bb_0.3
.bb_0.3:
lea si, qword ptr [rdx]
sub dil, al
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
test al, 84
xor al, dl
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
