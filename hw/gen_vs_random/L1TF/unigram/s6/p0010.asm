.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
add dl, 125 # instrumentation
cmovbe rdx, rdx
setno bl
sbb di, 80
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
cwde
add al, 30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
cmovnz rax, rdi
and rbx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor edx, 19
xor cl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
adc dl, dl
add dl, cl
bt rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
