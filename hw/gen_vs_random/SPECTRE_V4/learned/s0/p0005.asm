.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -13169
mul ax
xchg al, al
adc esi, 90
adc eax, -79
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
adc bl, 89
lea edi, qword ptr [rdi + rdx + 14]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
add dl, 83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
test cx, 16
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
cmovs rsi, rbx
cmovs edx, edx
xor cl, -85
and rdi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdi]
add rax, 83
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
btr esi, edi
add ax, 28666
cmovs edi, ebx
or bl, dl
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
