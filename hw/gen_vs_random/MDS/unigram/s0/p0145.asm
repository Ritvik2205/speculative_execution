.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 73
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and dl, -7
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and sil, 65
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor edx, 44
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and dl, 107 # instrumentation
cmovs esi, ecx
or dil, -57
xor dl, dl
and dl, 60 # instrumentation
cmovno esi, esi
cmovb ax, di
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 56
or cx, 10
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
