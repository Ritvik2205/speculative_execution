.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 27
xor sil, 71
cmp al, 75
or ax, 7381
xor bl, -126
or al, cl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and dil, -120
adc dl, 62
and al, cl
cmp rax, -47
sub dil, -28
and al, 92
xor bl, dl
test bl, al
mov bl, dil
or ax, 48
xor ax, 13332
sub dl, 107
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
cmp cl, dl
test bl, dl
sub bl, al
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
or eax, 143573881
xchg rcx, rdi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
