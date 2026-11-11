.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
mov dl, cl
sbb bl, -98
sbb dl, -106
sbb sil, -124
sbb dl, -71
inc ecx
sbb bl, -75
xchg rdi, rax
adc dil, al
xor ax, 13329
add al, -29
test eax, -251558852
inc bl
or cl, -55
add al, 40
mov dil, dl
or dil, -16
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
cmp rax, -1070057082
add al, -29
adc dl, al
sub dil, -11
or eax, 185586366
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
sub rax, 1914398062
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
