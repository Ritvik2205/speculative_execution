.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
test sil, 97
sub si, 32
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 71
add cl, 83 # instrumentation
setbe al
add dl, -108 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
add cl, -127
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 110 # instrumentation
movzx cx, bl
adc bl, bl
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
add cl, 112 # instrumentation
sbb edi, 51
and al, al
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
