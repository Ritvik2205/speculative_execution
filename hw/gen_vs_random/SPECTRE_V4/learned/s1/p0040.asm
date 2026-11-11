.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
add dl, al
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
cmp cl, 49
add cl, al
sbb cl, 40
dec dl
and eax, -1948401947
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
add cl, -62
or dl, 71
xor dil, 37
sub di, 9
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
mov al, cl
cmp dil, bl
or cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
test al, 52
and si, -70
sub al, 29
inc edi
and dl, 124
movsx dx, al
mov dil, 17
adc sil, cl
mov dil, cl
or cx, 59
cmp sil, cl
sub rdi, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
