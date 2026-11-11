.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
add cl, -6 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
sub edx, 31
add dl, 116 # instrumentation
cmovbe rcx, rcx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -73 # instrumentation
setnbe sil
add cl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
mov cl, -98
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 87
neg si
add al, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 63
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
