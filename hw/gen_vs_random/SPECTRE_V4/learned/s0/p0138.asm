.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 17
cmp eax, -1538116527
or eax, -863161215
and eax, -784085938
test dil, -26
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
jmp .bb_0.1
.bb_0.1:
xchg al, dl
or dl, cl
sub cl, bl
add al, -6
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
add dl, bl
sbb al, 43
sub bl, 66
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
or rax, rbx
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
adc al, cl
adc dil, sil
sub dil, 65
test ax, 2960
mov dl, al
dec al
add dl, -8
sub al, bl
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
