.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
test dil, 64
or al, -83
or eax, -863161215
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor al, bl
or eax, 1001462340
xchg rdx, rax
mov bl, al
or cl, dil
neg dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
cmp dl, sil
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
sbb bl, 121
sub al, 59
add dl, cl
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
cmp cl, sil
mov dl, al
or cl, bl
sbb dl, bl
adc cl, sil
neg cl
dec bl
sbb dl, -71
sbb al, -4
sub al, dil
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
sub al, 63
add al, 40
sub al, dl
sbb cl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
