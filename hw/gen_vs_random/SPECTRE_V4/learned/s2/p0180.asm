.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
sbb edi, -94
or ax, -29521
or al, -88
or cl, 83
sub al, dl
sub eax, 1050143384
add cl, bl
cmovle rax, rdi
or rbx, 69
dec al
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sub cl, 92
test cl, -52
sbb dil, al
add dl, bl
add al, -29
adc dl, 85
and dil, -61
adc dl, 34
xor eax, 1185843233
cmp bl, 12
sbb al, 95
sub dl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
add dil, bl
and cx, -117
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
