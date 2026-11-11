.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
sub cl, dl
sub bl, -98
or dl, al
sub rbx, 101
or cl, cl
jmp .bb_0.1
.bb_0.1:
sub bl, 56
mov dl, cl
or al, al
sbb dil, 65
movsx si, al
test bl, dl
and sil, sil
or eax, 1001462340
cmp dl, 45
xor cl, dil
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
or bl, al
btc rsi, rdi
mov al, 82
or bl, 80
sbb ebx, -54
cmp al, 105
cmp cl, dl
mov cl, 1
adc dl, 79
sbb sil, -124
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 85
sub eax, -529389957
and ebx, -122
and ax, 13045
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
