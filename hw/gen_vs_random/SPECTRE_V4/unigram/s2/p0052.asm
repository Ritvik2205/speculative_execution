.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
test rdx, 66
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
cmovle rdi, rdx
adc bl, al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
cmovb ebx, edx
test cx, ax
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 66
sub bl, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
add rax, rbx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 30
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
test cx, 26
test edi, -1249897727
test sil, bl
imul eax, ecx
test ax, -5170
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sub edx, 17
xor dil, 16
add cl, 67
imul edx, ecx, 13
add ecx, 13
add cl, 65
add al, -26 # instrumentation
btr eax, 21
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
add ecx, 75
bt ecx, 55
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
inc rax
xor cl, -85
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
add bx, 110
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 65
add cl, bl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
sub esi, 66
sub al, dil
add bl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
