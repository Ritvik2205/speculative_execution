.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test dl, 84
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
add cl, 89 # instrumentation
adc al, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
xor edi, 89
not rdx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
setbe al
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
add al, 42 # instrumentation
lea edx, qword ptr [rax + rdx]
sub edx, edx
cmp esi, 110
or al, -48
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
