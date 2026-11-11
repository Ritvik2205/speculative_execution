.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
cmp rsi, 74
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
mov sil, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
add al, bl
add dl, -82
dec cl
or al, -90
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and dil, sil
and dl, -104
sbb ax, 7207
adc cl, 31
adc dl, al
adc dil, bl
or al, -16
add sil, dil
and al, -118
and dl, 24
cmovnz rdi, rdx
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
sbb dx, 2
sbb rax, 59
add al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
