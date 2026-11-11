.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
test bl, dl
test al, cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
sub cl, sil
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
or al, cl
xor al, bl
dec cl
or dil, 5
and rdx, 84
mov al, 9
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
xor eax, -1772786275
dec dl
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
xchg cl, bl
sub dil, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
adc bl, 97
cmp al, -78
cmp dil, bl
cmp dil, dl
adc al, cl
add dil, al
sub cl, dil
adc sil, 77
sub al, -84
and dil, bl
lea si, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
