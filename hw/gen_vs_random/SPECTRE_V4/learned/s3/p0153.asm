.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -11
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and di, -65
test dl, al
cmp dl, cl
jmp .bb_0.1
.bb_0.1:
or cl, 12
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub cl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor rsi, -3
sbb cl, 127
xor dl, al
and sil, -84
add cl, dl
or al, bl
xor cx, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
