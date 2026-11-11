.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 13
cmp al, 115
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 18
adc bl, cl
xchg rdi, rcx
cmp bl, dl
xor bx, cx
cmp bl, sil
cmp al, 75
and al, 59
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
cmp al, -122
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
xor di, ax
cmp al, -1
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
adc al, al
add eax, 953442933
neg cl
bswap ecx
sub dil, -28
sbb bl, dil
sbb dl, al
or al, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
