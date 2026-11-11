.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, 98
cmovle rdi, rcx
and dil, dl
xor bl, 78
lea rdx, qword ptr [rax + rdi + 58]
add al, 127 # instrumentation
sets al
cmp cl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
add sil, 36
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
add dl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 98
cmovno eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
