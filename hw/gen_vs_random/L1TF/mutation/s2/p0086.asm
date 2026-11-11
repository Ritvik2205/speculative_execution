.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
not rsi
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
cmovnb eax, ecx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
test bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
test dl, dl
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
test ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
