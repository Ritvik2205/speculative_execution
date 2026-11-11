.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or rdx, 1
sub cl, sil
cmp cl, 107
sbb bl, -75
xor di, cx
adc edi, -83
cmp al, -122
sub al, 69
or al, -47
cmovno ax, di
test eax, 1340292467
xor dx, -43
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and dl, -11
sub al, dil
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
sub cl, -73
adc dl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
test cl, -119
xor eax, 308288205
or ax, -29521
sub dl, -16
sub sil, -35
xchg ebx, eax
cmp al, cl
sbb dil, 74
or al, -50
sbb sil, bl
dec al
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
