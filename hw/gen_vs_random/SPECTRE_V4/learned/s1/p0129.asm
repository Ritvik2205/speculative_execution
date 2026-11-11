.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -101
add cl, -62
and dil, sil
and sil, -84
adc al, dl
and rdi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdi]
and al, 59
cmp dil, cl
sub cl, 18
mov sil, 75
adc dl, dil
test al, -85
cmp rdx, -49
or dl, al
add dl, al
cmp al, -122
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
sub bl, cl
xor cl, -15
or al, -16
adc dl, al
sub sil, dil
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 7
sub bl, al
cmp al, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
test al, 27
and cl, al
or sil, sil
and cl, al
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
