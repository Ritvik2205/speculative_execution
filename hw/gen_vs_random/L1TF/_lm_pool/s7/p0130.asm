.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
not sil
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 112
sub rcx, -90
dec cx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add dil, dl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
