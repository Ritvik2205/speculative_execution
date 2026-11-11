.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
or sil, -47
or bl, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
cmp dl, dil
or bl, sil
dec bl
test al, -24
sub dil, al
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
or rdx, 1
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
or eax, 185586366
or dl, sil
xor al, sil
not al
cmp al, bl
mov al, 90
test esi, -2111618709
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 34
sbb al, 70
test cl, -52
xor al, sil
cmp al, -116
sbb cl, 35
cmp dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
